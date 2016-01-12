class ClientsController < ApplicationController

  def index
    @shelter = Shelter.find(params[:shelter_id])
    @clients = @shelter.clients
  end

  def show
    @client = Client.find(params[:id])
    @animals = @client.animals
  end

  def new
    @shelter = Shelter.find(params[:shelter_id])
    @client = @shelter.clients.new
  end

  def create
    @shelter = Shelter.find(params[:shelter_id])
    @client = @shelter.clients.new(safe_client_parameters)

    if @client.save
      flash[:notice] = "Client created"
      redirect_to shelter_path(@shelter)
    else
      render :new
    end
  end

  private

  def safe_client_parameters
    params.require(:client).permit(:name, :age, :photo)
  end
end