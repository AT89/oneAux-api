class ChangeAccessCodeInPlaylists < ActiveRecord::Migration[5.0]
  def change
      change_column :playlists, :access_code, :null => false
  end
end
