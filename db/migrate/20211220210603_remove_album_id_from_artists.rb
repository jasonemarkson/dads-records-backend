class RemoveAlbumIdFromArtists < ActiveRecord::Migration[6.1]
  def change
    remove_column :artists, :album_id, :integer
  end
end
