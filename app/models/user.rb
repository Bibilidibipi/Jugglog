class User < ActiveRecord::Base
  validates :username, :session_token, :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }
  before_validation :ensure_session_token

  has_many :is_followee_followings, class_name: :Following, foreign_key: :followee_id
  has_many :is_follower_followings, class_name: :Following, foreign_key: :follower_id
  has_many :followers, through: :is_followee_followings, source: :follower
  has_many :followees, through: :is_follower_followings, source: :followee
  has_many :comments, as: :commentable
  has_many :authored_comments, foreign_key: :author_id
  has_many :learnings
  has_many :practices, through: :learnings, source: :practices

  attr_reader :password

  def self.find_by_credentials(username, password)
    user = User.find_by_username(username);
    return nil unless user

    user.is_password?(password) ? user : nil
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

  def gravatar_url
    gravatar_id = Digest::MD5::hexdigest(email.downcase)
    "https://secure.gravatar.com/avatar/#{gravatar_id}"
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
end
