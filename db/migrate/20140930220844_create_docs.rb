class CreateDocs < ActiveRecord::Migration
  def change
    create_table :docs do |t|
      t.string :name
      t.integer :folder_id
      t.string :file

      t.timestamps
    end
  end
end
