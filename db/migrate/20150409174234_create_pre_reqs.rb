class CreatePreReqs < ActiveRecord::Migration
  def change
    create_table :pre_reqs do |t|
      t.integer :parent_id, null: false
      t.integer :child_id, null: false

      t.timestamps null: false
    end

    add_index :pre_reqs, :parent_id
    add_index :pre_reqs, :child_id
  end
end
