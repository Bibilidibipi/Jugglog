class Following < ActiveRecord::Base
  validates :followee_id, :follower_id, presence: true
  validates :followee_id, uniqueness: { scope: :follower_id }
  validate :no_self_follow

  belongs_to :follower, class_name: :User, foreign_key: :follower_id
  belongs_to :followee, class_name: :User, foreign_key: :followee_id

  private

  def no_self_follow
    errors.add(:following, "can't follow yourself") unless followee_id != follower_id
  end
end
