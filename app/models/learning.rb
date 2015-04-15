class Learning < ActiveRecord::Base
  validates :user_id, presence: true
  validates :pattern_id, uniqueness: { scope: :user_id }, presence: true
  validates :status, inclusion: ['unlearned', 'learned']

  belongs_to :user
  belongs_to :pattern
  has_many :practices

  def practiced?
    self.practices.length > 0
  end
end
