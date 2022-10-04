class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :edit, :update, :destroy]

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
  end

  def edit
  end

  def update
    if @album.update(album_params)
      redirect_to album_path(@album.id)
    else
      render :edit
    end
  end

  def destroy
    @album.destroy
    redirect_to root_path
  end

  private

  def album_params
    params.require(:album).permit(:name, { images: [] })
  end

  def set_album
    @album = Album.find(params[:id])
  end
end
