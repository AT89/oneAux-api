class SongsController < ApplicationController
  before_action :set_song, only: [:show, :update, :destroy]

  # GET /songs
  def index
    @playlist = Playlist.find(params[:playlist_id])
    @songs = @playlist.songs

    render json: @songs.to_json
  end

  # GET /songs/1
  def show
      @playlist = Playlist.find(params[:playlist_id])
      @song = Song.find(params[:id].merge(playlist_id: @playlist.id))
      render json: @song.to_json
  end

  # POST /songs
  def create
    @playlist = Playlist.find(params[:playlist_id])
    @song = @playlist.songs.build(song_params)

    if @song.save
      render json: @song.to_json, status: :created
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /songs/1
  def update
    @song = Song.find(params[:id])
    if @song.update(song_params)
      render json: @song.to_json
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  # DELETE /songs/1
  def destroy
    @song = Song.find(params[:id])
    @song.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def song_params
      params.require(:song).permit( :title,:user, :artist,:album,:album_art,:duraton,:audio_url,:score)
    end
end
