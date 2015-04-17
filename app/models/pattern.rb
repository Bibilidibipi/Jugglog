class Pattern < ActiveRecord::Base
  validates :title, presence: true
  validates :num_jugglers, :num_clubs, numericality: { greater_than: 0, only_integer: true }

  has_many :is_parent_pre_reqs, class_name: :PreReq, foreign_key: :parent_id
  has_many :is_child_pre_reqs, class_name: :PreReq, foreign_key: :child_id
  has_many :parents, through: :is_child_pre_reqs, source: :parent
  has_many :children, through: :is_parent_pre_reqs, source: :child
  has_many :comments, as: :commentable
  has_many :learnings
  has_many :practices, through: :learnings, source: :practices

  def practiced
    self.practices.where('practices.created_at > ?', 1.day.ago).length > 0
  end
end
