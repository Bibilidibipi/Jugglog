class AddNumJugglersToPatterns < ActiveRecord::Migration
  def change
    add_column :patterns, :num_jugglers, :integer, null: false, default: 1
    add_index :patterns, :num_jugglers
  end
end
