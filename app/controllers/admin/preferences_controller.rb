class Admin::PreferencesController < ApplicationController

def index
  @preference = Preference.create(allow_create_songs: true)
end

private
def preference_params
  params.require(:preference).permit(:allow_create_songs)
end

end
