class AlbumsController < ApplicationController
    def index
        @albums = Album.all

        # to serialize this in the future
        render json: @albums, except: [:created_at, :updated_at],
        :include => {:artist => {:only => :name}}
    end 

    def show
        @album = Album.find(params[:id])
        render json: @album
    end 

    def create
        @albums = Album.create(album_params)
        render json: @albums
    end

    def destroy
        @albums = Albums.all
        @album = Album.all.find(params[:id])
        @album.destroy

        render json: @albums
    end


    private

    def album_params
        params.require(:album).permit(:title, :year, :album_cover, :artist_id)
    end
end
