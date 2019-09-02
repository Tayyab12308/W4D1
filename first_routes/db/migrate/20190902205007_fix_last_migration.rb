class FixLastMigration < ActiveRecord::Migration[5.2]
   def change
    change_column :artworks, :title, :text, null: false
    change_column :artworks, :image_url, :text, null: false 
    change_column :artworks, :artist_id, :integer, null: false
  end
end
