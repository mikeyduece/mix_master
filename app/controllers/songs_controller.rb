class SongsController < ApplicationController
  
  def show
    @song = Song.find(params[:id])
  end
  
  def create  
    @song = Song.new(song_params)
    @song.artist_id = params[:artist_id]
    @song.save
    redirect_to artist_path(@song.artist)
  end

  private

  def song_params
    params.require(:song).permit(:title)
  end
end
