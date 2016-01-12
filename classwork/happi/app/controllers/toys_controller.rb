class ToysController < ApplicationController

  def show
    @toy = Toy.find(params[:id])
  end
  def new
    @animal = Animal.find(params[:animal_id])
    @toy = @animal.toys.new
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @toy = @animal.toys.new(safe_toy_params)
    if @toy.save
      puts "+================="
      puts @toy.inspect
      flash[:notice] = "#{ @animal.name } now has the #{ @toy.name } to play with."
      redirect_to animal_path(@animal)
    end
  end

  private

  def safe_toy_params
    params.require(:toy).permit(:name, :photo)
  end
end