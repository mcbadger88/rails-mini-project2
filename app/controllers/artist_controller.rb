class ArtistController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        print params
        @artists = Artist.all()

    end

    def show 
        @paramas_id = params[:id]
        @artist = Artist.find(params[:id])
    end

    def new
    end

    def create
        artist = Artist.new()
        artist.name = params[:name]
        artist.year_of_birth = params[:year_of_birth]
        artist.active = params[:active]
        artist.save

        redirect_to '/'
    end

end
