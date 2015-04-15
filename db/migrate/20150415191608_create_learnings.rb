class CreateLearnings < ActiveRecord::Migration
  def change
    create_table :learnings do |t|
      t.integer :user_id, null: false
      t.integer :pattern_id, null: false
      t.string :status, null: false

      t.timestamps null: false
    end

    add_index :learnings, :user_id
    add_index :learnings, :pattern_id
    add_index :learnings, [:user_id, :pattern_id], unique: true
  end
end
