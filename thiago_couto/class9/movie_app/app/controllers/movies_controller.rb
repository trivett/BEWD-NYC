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
		@movie = Movie.new(safe_movie_params)
		if @movie.save
			flash[:notice] = 'Movie saved!'
			redirect_to movies_path
		else
			flash[:notice] = 'Movie was not saved! Try again ...'
			redirect_to new_movie_path
		end
	end

	def destroy
		Movie.find(params[:id]).destroy
		redirect_to movies_path
	end

	private

	def safe_movie_params
		params.require(:movie).permit(:title, :release)
	end
end
