class PhotosController < ApplicationController

  def index
    @photos = Photo.all
    @users = User.all
  end

  def show
    @photos = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(safe_photo_params)
      if @photo.save
        redirect_to photos_path
      else
        redirect_to new_photo_path
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
    if @photo.update(safe_photo_params)
      redirect_to photos_path
    else
      redirect_to edit_photo_path
    end
  end

  private

  def safe_photo_params
    params.require(:photo).permit(:url, :caption)
  end


end
