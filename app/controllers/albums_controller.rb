class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :edit, :update, :destroy]
  before_action :move_to_sign_up

  def index
    @albums = current_user.albums
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to root_path
    else
      render :new
    end
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
    params.require(:album).permit(:name, { images: [] }).merge(user_id: current_user.id)
  end

  def set_album
    @album = Album.find(params[:id])
  end

  def move_to_sign_up
    redirect_to new_user_registration_path unless user_signed_in?
  end
end
