class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save!
      redirect_to @artist, notice: 'Artist was successfully created.'
    else
      @artist = Artist.new
      render 'artists/show', status: :unprocessable_entity
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio, :image)
  end
end
