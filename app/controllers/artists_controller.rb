class ArtistsController < ApplicationController
    def index
        @artists = Artist.all

        # to serialize this in the future
        render json: @artists, except: [:created_at, :updated_at], 
        include: {:albums => { :except => [:created_at, :updated_at] }}
    end

    def show
        @artist = Artist.find(params[:id])
        render json: @artist
    end 

    def create
        @artists = Artist.create(artist_params)
        render json: @artists
    end

    def destroy
        @artists = Artists.all
        @artist = Artist.all.find(params[:id])
        @artist.destroy

        render json: @artists
    end

    private

    def artist_params
        params.require(:artist).permit(:name)
    end
end
