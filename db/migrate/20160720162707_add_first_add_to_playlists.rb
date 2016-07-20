class AddFirstAddToPlaylists < ActiveRecord::Migration[5.0]
  def change
    add_column :playlists, :first_add, :boolean, default: false
  end
end
