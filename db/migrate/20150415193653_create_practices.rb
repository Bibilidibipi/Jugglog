class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.integer :learning_id, null: false

      t.timestamps null: false
    end

    add_index :practices, :learning_id
  end
end
