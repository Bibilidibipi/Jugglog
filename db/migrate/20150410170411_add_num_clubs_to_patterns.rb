class AddNumClubsToPatterns < ActiveRecord::Migration
  def change
    add_column :patterns, :num_clubs, :integer, default: 0
  end
end
