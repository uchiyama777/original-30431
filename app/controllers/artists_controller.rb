class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def edit
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:image, :artist_name).merge(user_id: current_user.id)
  end

end
