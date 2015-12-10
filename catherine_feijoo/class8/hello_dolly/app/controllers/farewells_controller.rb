class FarewellsController < ApplicationController
	def index
		@name = params[:name]
	end
end