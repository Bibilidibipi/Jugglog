class Practice < ActiveRecord::Base
  validates :learning_id, presence: true

  belongs_to :learning
  has_one :user, through: :learning, source: :user
  has_one :pattern, through: :learning, source: :pattern
end
