class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end

	def show
		@movie = Movie.find_by title: params[:name]
	end
end