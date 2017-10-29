class SongsController < ApplicationController
  before_action :find_artist, only: [:create]

  def index
    @songs = Song.all
  end


  def new
    @song = Song.new
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.create(song_params)
  end


   def destroy
     @artist = Artist.find(params[:artist_id])
     @song = @artist.songs.find(params[:id])
     @song.destroy
     redirect_to artist_path(@artist)
   end

  private

  def find_artist
    @artist = Artist.find(params[:artist_id])
  end

  def song_params
    song_params = params.require(:song).permit(:title, :artist_id)
  end

end
