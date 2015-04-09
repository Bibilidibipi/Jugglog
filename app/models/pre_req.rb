class PreReq < ActiveRecord::Base
  validates :parent_id, :child_id, presence: true

  belongs_to :parent, class_name: :Pattern, foreign_key: :parent_id
  belongs_to :child, class_name: :Pattern, foreign_key: :child_id
end
