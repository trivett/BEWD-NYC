class WorkshirtsController < ApplicationController
	def index
		@workshirts = Workshirt.all
	end
end