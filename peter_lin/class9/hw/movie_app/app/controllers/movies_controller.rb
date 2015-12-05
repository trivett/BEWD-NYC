class MoviesController < ApplicationController
  
  def index
    puts 'running the index method!'
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

end