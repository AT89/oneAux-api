class CreatePlaylists < ActiveRecord::Migration[5.0]
  def change
    create_table :playlists do |t|
      t.string :name
      t.string :access_code
      t.integer :songs_per_user
      # t.references :songs, index: true, array: true
      t.string :location
      t.timestamps
    end
  end
end
