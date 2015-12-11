class MoviesController < ApplicationController
  
  def index
    puts 'running the index method!'
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def destroy
    Movie.find(params[:id]).delete
    redirect_to movies_path
  end

  def new
    @movie = Movie.new
  end

  def create
    # safe_product_params = params.require(:movie).require()
  end

end