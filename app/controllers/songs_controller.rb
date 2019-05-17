class SongsController < ApplicationController
  before_action :set_artist
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  
  def index
    @songs = @artist.songs.all
  end

  def show
  end

  def new
    @song = @artist.songs.new
    render :new
  end

  def create
    @song = @artist.songs.new(song_params)

    if @song.save
      redirect_to artist_songs_path(@artist.id, @song.id)
    else
      render :new
    end

  end

  def edit
    render :edit
  end

  def update
    if @song.update(song_params)
      redirect_to artist_song_path(@artist, @song)
    else
      render :edit
  end

  def destroy
    @song.destroy
    redirect_to artist_songs_path(@artist) # may need to fix routes on this controller
  end

  private

    # def song_params
    # end

    # def set_song
    # end

    # def set_artist
    # end

end
