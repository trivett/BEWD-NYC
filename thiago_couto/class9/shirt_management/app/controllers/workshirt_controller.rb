class WorkshirtController < ApplicationController
	def index
		@workshirts = Workshirt.all
	end
end