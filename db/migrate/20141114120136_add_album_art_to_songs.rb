class AddAlbumArtToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :album_art, :string
  end
end
