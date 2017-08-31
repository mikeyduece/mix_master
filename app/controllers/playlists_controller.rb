class PlaylistsController < ApplicationController
  
  def index
    # @playlists = Playlist.all
  end
  
  def show
    @playlist = Playlist.find(params[:id])
    @songs    = Song.all
  end
  
  def new
    @playlist = Playlist.new
  end
  
  def create
    @playlist = Playlist.create(playlist_params)
    redirect_to palylist_path(@playlist)
  end
  
  private
  
  def playlist_params
    params.require(:playlist).permit(:name, song_ids: [])
  end
end
