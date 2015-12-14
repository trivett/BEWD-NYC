class WorkshirtsController < ApplicationController

	def index
		@workshirts = Workshirt.all
	end

	def show
		@workshirt = Workshirt.find(params[:id])

	end


end