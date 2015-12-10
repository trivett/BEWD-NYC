class HellosController < ApplicationController
	def index
		@name = params[:name]
	end
end