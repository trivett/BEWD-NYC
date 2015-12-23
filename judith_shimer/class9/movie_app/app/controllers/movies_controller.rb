class MoviesController < ApplicationController

	def index
		@movies = Movie.all.sort_by { |m| m.year }.reverse!
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(movie_params)
		if @movie.save
			flash[:notice] = "#{@movie.title} has been added to the library."
			redirect_to movies_path
		else
			redirect_to new_movie_path
		end
	end

	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		redirect_to movies_path
	end

	private

	def movie_params
		params.require(:movie).permit(:title,:year,:summary)
	end

end