class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end

	def show 
		@movie = Movie.find(params[:id])
	end

	def new
		@movie = Movie.new
	end

	def create
		movie_params = params.require(:movie).permit(:name, :release)
		Movie.create(movie_params)
		redirect_to movies_path
	end
end
