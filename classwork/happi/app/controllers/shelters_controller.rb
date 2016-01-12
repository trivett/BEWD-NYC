class SheltersController < ApplicationController

  def index
    @shelters = Shelter.all
  end

  def show
    @shelter = Shelter.find(params[:id])
    @clients = @shelter.clients
    @animals = @shelter.animals
  end
  
  def new
    @shelter = Shelter.new
  end

  def create
    @shelter = Shelter.new(safe_shelter_params)
    if @shelter.save
      flash[:notice] = "Shelter Created!"
      redirect_to shelters_path
    else
      render :new
    end
  end

  private

  def safe_shelter_params
    params.require(:shelter).permit(:name)
  end
end