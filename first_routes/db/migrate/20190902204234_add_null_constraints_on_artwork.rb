class AddNullConstraintsOnArtwork < ActiveRecord::Migration[5.2]
  def change
    change_column :artworks, :title, null: false
    change_column :artworks, :image_url, null: false 
    change_column :artworks, :artist_id, null: false
  end
end
