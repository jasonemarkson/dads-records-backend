class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :year
      t.string :album_cover
      t.integer :artist_id

      t.timestamps
    end
  end
end
