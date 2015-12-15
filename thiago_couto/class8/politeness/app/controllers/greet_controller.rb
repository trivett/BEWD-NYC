class GreetController < ApplicationController
	def hi
		puts "Params here!"
		puts params[:language]

		@language = params[:language]
		if @language.downcase == "english"
			@greeting = "Hello!"
		elsif @language.downcase == "espanol"
			@greeting = "Hola!"
		else @greeting = "Request language please!"
		end
	end
end