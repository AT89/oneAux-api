class CreatePlaylists < ActiveRecord::Migration[5.0]
  def change
    create_table :playlists do |t|
      t.string :name
      t.string :access_code
      t.integer :songs_per_user
      # t.references :songs, index: true, array: true
      t.string :location
      t.string :access_token
      t.string :spotify_user_id
      t.string :spotify_playlist_id
      t.timestamps
    end
  end
end
