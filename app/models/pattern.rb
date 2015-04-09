class Pattern < ActiveRecord::Base
  validates :title, :num_jugglers, presence: true
  validates :num_jugglers, numericality: { greater_than: 0, only_integer: true }

  has_many :is_parent_pre_reqs, class_name: :PreReq, foreign_key: :parent_id
  has_many :is_child_pre_reqs, class_name: :PreReq, foreign_key: :child_id
  has_many :parents, through: :is_child_pre_reqs, source: :parent
  has_many :children, through: :is_parent_pre_reqs, source: :child
end
