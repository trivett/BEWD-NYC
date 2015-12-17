class PhotosController < ApplicationController

  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      redirect_to photos_path
    else
      render new_photo_path
    end

  end

  def destroy
    Photo.find(params[:id]).destroy
    redirect_to photos_path
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update(photo_params)
      flash[:notice] = "photo updated"
      redirect_to photo_path
    else
      render edit_photo_path
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:url, :caption)
  end
end