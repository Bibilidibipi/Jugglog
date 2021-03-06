class Comment < ActiveRecord::Base
  validates :body, :commentable_id, :commentable_type, :author_id, presence: true

  belongs_to :commentable, polymorphic: true
  belongs_to :author, class_name: :User, foreign_key: :author_id
end
