class MoviesController < ApplicationController

	def index
		@movies = Movie.search(params[:search])
	end

	def show
		@movies = Movie.find(params[:id])	
	end

	def new
		@movies = Movie.new
	end

	def create
		@movies = Movie.new(params.require(:movie).permit(:title, :description, :year_released))

		if @movies.save

		flash[:notice] = "Movies created!"

		redirect_to movies_path

		else 

		flash[:notice] = "Sorry something went wrong!"

		redirect_to movies_path
		end
	end

	def edit
		@movies = Movie.find(params[:id])
		
		redirect_to movies_path
	end

	def destroy

		Movie.find(params[:id]).destroy
		redirect_to movies_path

	end

	

end
