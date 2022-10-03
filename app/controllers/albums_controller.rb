class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def create
    Album.create(album_params)
  end
  
  def show
    @album = Album.find(params[:id])
  end



private

  def album_params
    params.require(:album).permit(:name, :image)
  end

end