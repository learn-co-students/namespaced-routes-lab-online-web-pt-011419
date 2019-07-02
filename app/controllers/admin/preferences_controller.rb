class Admin::PreferencesController < ApplicationController
  def index
    @preference = Preference.find_or_create_by(artist_sort_order: "DESC" )
  end

   def update
    @preference = Preference.find(params[:id])
    @preference.update(preference_params)
    redirect_to admin_preferences_path
  end

   private

   def preference_params
    params.require(:preference).permit(:allow_create_songs, :allow_create_artists, :song_sort_order, :artist_sort_order)
  end
 end
