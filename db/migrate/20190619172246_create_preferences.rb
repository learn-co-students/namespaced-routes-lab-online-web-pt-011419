class CreatePreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :preferences do |t|
      t.string :artist_song_order
      t.string :song_sort_order
      t.boolean :allow_create_artist
      t.boolean :allow_create_songs
    end
  end
end
