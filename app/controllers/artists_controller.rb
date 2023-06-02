class ArtistsController < ApplicationController

  def create
    @artist = Artist.new(artist_params)
    @artist.image = params[:artist][:image]

    if @artist.save

    else

    end
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

end
