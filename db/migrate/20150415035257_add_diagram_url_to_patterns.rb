class AddDiagramUrlToPatterns < ActiveRecord::Migration
  def change
    add_column :patterns, :diagram_url, :string
  end
end
