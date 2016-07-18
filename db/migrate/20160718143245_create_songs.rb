class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :user
      t.string :title
      t.string :artist
      t.string :album
      t.string :album_art
      t.string :duration
      t.string :audio_url
      t.string :score, default:0
      t.timestamps
    end
  end
end
