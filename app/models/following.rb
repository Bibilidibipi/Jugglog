class Following < ActiveRecord::Base
  validates :followee_id, :follower_id, presence: true

  belongs_to :follower, class_name: :User, foreign_key: :follower_id
  belongs_to :followee, class_name: :User, foreign_key: :followee_id
end
