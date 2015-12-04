class GreetsController  < ApplicationController

	def hi
	
		puts 'params here!'
		puts params[:language]

		@language = params[:language] #colon means symbol
		@hello = 'please enter language'

		if @language.downcase == 'english'
			@hello = 'hello'
		elsif @language.downcase == 'spanish'
			@hello = 'hola'
		elsif @language.downcase == 'italian'
			@hello = 'ciao'
		else
			@hello = 'please enter language'
		end

	end

	



end