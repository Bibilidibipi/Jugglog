class User < ActiveRecord::Base
  validates :username, :session_token, :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }
  validates :guest, inclusion: [true, false]
  before_validation :ensure_session_token
  after_create :generate_seeds

  has_many :is_followee_followings, class_name: :Following, foreign_key: :followee_id, dependent: :destroy
  has_many :is_follower_followings, class_name: :Following, foreign_key: :follower_id, dependent: :destroy
  has_many :followers, through: :is_followee_followings, source: :follower
  has_many :followees, through: :is_follower_followings, source: :followee
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :authored_comments, class_name: :Comment, foreign_key: :author_id, dependent: :destroy
  has_many :learnings, dependent: :destroy
  has_many :practices, through: :learnings, source: :practices

  attr_reader :password

  def self.find_by_credentials(username, password)
    user = User.find_by_username(username);
    return nil unless user

    user.is_password?(password) ? user : nil
  end

  def self.guest_username
    begin
      guest_name = 'guest ' + rand(1000).to_s
    end while User.find_by_username(guest_name)

    return guest_name
  end

  def self.guest_email
    begin
      guest_email = Faker::Internet.safe_email
    end while User.find_by_email(guest_email)

    return guest_email
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(password_digest).is_password?(password)
  end

  def reset_token!
    self.session_token = generate_session_token
    self.save!
    self.session_token
  end

  def wavatar_url
    gravatar_id = Digest::MD5::hexdigest(email.downcase)
    "https://secure.gravatar.com/avatar/#{gravatar_id}" + "?d=wavatar"
  end

  def learned_learnings
    self.learnings.where(status: :learned)
  end

  def learned_patterns
    return [] if self.learned_learnings.empty?
    where_string = self.learned_learnings.map(&:pattern_id).join(", ")
    Pattern.where("id IN (" + where_string + ")")
  end

  def practiced_learnings
    self.learnings.select{ |learning| learning.practiced? }
  end

  def practiced_patterns
    return [] if self.practiced_learnings.empty?
    where_string = self.practiced_learnings.map(&:pattern_id).join(", ")
    Pattern.where("id IN (" + where_string + ")")
  end

  private

  def generate_session_token
    SecureRandom.urlsafe_base64(16)
  end

  def ensure_session_token
    self.session_token ||= generate_session_token
  end

  def generate_seeds
    if self.guest
      num_patterns = Pattern.all.length
      5.times do
        begin
          Learning.create!(
            user_id: self.id,
            pattern_id: rand(num_patterns) + 1,
            updated_at: Time.at(1.week.ago + rand(Time.now - 1.week.ago)),
            status: 'unlearned'
          )
        rescue
          retry
        end
      end
      learning_ids = self.learnings.pluck(:id)
      4.times do
        begin
          Learning.create!(
            user_id: self.id,
            pattern_id: rand(num_patterns) + 1,
            updated_at: Time.at(1.week.ago + rand(Time.now - 1.week.ago)),
            status: 'learned'
          )
        rescue
          retry
        end
      end
      5.times do
        begin
          Practice.create!(
            learning_id: learning_ids.sample,
            created_at: Time.at(1.week.ago + rand(Time.now - 1.week.ago))
          )
        rescue
          retry
        end
      end
      num_users = User.all.length
      6.times do
        begin
          Following.create!(
            followee_id: self.id,
            follower_id: rand(num_users) + 1
          )
        rescue
          retry
        end
      end
      3.times do
        begin
          Following.create!(
            followee_id: rand(num_users) + 1,
            follower_id: self.id
          )
        rescue
          retry
        end
      end
    end
  end
end
