class User < ActiveRecord::Base
  validates :username, :password_digest, :session_token, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }
  before_validation :ensure_session_token

  has_many :is_followee_followings, class_name: :Following, foreign_key: :followee_id
  has_many :is_follower_followings, class_name: :Following, foreign_key: :follower_id
  has_many :followers, through: :is_followee_followings, source: :follower
  has_many :followees, through: :is_follower_followings, source: :followee

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

  private

  def generate_session_token
    SecureRandom.urlsafe_base64(16)
  end

  def ensure_session_token
    self.session_token ||= generate_session_token
  end
end
