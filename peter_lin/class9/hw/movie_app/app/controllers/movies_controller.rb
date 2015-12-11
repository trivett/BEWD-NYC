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
    safe_product_params = params.require(:movie).permit(:title, :description, :year_released)
    @movie = Movie.new(safe_product_params)
    if @movie.save
      flash[:notice] = "Movie created!"
      redirect_to movies_path
    else
      flash[:notice] = "Didn't work!"
      redirect_to new_movie_path
    end
  end


 

end