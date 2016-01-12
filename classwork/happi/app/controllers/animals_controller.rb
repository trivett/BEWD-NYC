class AnimalsController < ApplicationController

  def index
    # @animals = Animal.all

  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @shelter = Shelter.find(params[:shelter_id])
    @animal = Animal.new
  end

  def create
    @shelter = Shelter.find(params[:shelter_id])
    @animal = @shelter.animals.new(safe_animal_parameters)

    if @animal.save
      flash[:notice] = "Animal created"
      redirect_to shelter_path(@shelter)
    else
      render :new
    end
  end

  def adopt
    @shelter = Shelter.find(params[:shelter_id])
    @animal = Animal.find(params[:animal_id])

    if !@shelter.animals.include?(@animal)
      redirect_to shelter_path(@shelter)
      flash[:notice] = "#{ @animal.name } is no longer available in #{ @shelter.name }"
    end

  end

  def complete_adoption
    @client = Client.find(params[:animal]['client'])
    @animal = Animal.find(params[:animal_id])
    @animal.adopt(@client)
    redirect_to shelter_clients_path(@client.shelter, @client)
    flash[:notice] = "#{ @client.name } has adopted #{ @animal.name }"
  end

  def donate
    @animal = Animal.find(params[:animal_id])
    @client = @animal.client

    if !@client.animals.include?(@animal)
      redirect_to client_path(@client)
      flash[:notice] = "#{ @animal.name } is no longer kept by #{ @client.name }"
    end
  end

  def complete_donation
    @animal = Animal.find(params[:animal_id])
    @shelter = Shelter.find(params[:animal]['shelter'])
    @animal.donate(@shelter)
    redirect_to shelter_path(@shelter)
    flash[:notice] = "#{ @animal.name } has been given to  #{ @shelter.name }"
  end

  private

  def safe_animal_parameters
    params.require(:animal).permit(:name, :species, :photo)
  end
end