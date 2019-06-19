class ChangeColumnNameInPreferences < ActiveRecord::Migration[5.0]
  def change
    rename_column :preferences, :artist_song_order, :artist_sort_order
    rename_column :preferences, :allow_create_artist, :allow_create_artists
  end
end
