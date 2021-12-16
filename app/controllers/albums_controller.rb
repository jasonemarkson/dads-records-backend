class AlbumsController < ApplicationController
    def index
        @albums = Album.all

        # render json: @albums
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
        params.require(:album).permit(:title, :artist, :year, :album_cover)
    end
end
