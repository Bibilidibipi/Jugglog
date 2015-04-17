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

  def practiced(user_id)
    self.practices.where('learnings.user_id = ?', user_id).where('practices.created_at > ?', 1.day.ago).length > 0
  end

  def learned(user_id)
    self.learnings.where('learnings.user_id = ?', user_id).where('learnings.status = ?', 'learned').length > 0
  end
end
