class CreateArtwork < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.text "title", presence: true
      t.text "image_url", presence: true
      t.integer "artist_id", presence: true

      t.timestamps
    end
    add_index :artworks, :artist_id, unique: true
  end
end
