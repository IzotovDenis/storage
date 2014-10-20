class AddAncestryToFolders < ActiveRecord::Migration
  def change
    add_column :folders, :ancesty, :string
  end
end
