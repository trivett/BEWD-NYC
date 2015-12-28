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
    # @photo = Photo.create(safe_product_params)
    # redirect_to photos_path
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:notice] = "Photo created!"
      redirect_to photos_path
    else
      flash[:notice] = "didn't work!"
      redirect_to new_photo_path
    end
  end

  def destroy
    flash[:notice] = "Photo destroyed!"
    Photo.find(params[:id]).destroy
    redirect_to photos_path
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update(photo_params)
      flash[:notice] = "Photo Updated"
      redirect_to photo_path
    else
      flash[:notice] = "Photo Update Failed"
      render edit_photo_path
    end
  end


  private

  def photo_params
    params.require(:photo).permit(:url, :caption)
  end

end