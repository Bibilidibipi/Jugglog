class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.integer :commentable_id, null: false
      t.string :commentable_type, null: false

      t.timestamps null: false
    end

    add_index :comments, :commentable_id
  end
end
