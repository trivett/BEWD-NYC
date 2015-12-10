class GreetController < ApplicationController

	def hi
		puts "params here!"
		puts params[:language]

		@language = params[:language]

		if @language.downcase == "english"
			@greeting = "hello"
		elsif @language.downcase == "espanol"
			@greeting = "hola"
		end

	end

end