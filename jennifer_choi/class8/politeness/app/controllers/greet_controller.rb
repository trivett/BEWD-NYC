class GreetController < ApplicationController
		def hi
			puts "params here!"
			puts params[:language]

			@language = params[:language]

			if @language.downcase == "spanish"
				@greeting = "hola"
			elsif @language.downcase == "english"
				@greeting = "hello"
			else
				@greeting = "request language please"
			end

		end
		#def english
		#	puts "user selected english"
		#end
		#def espanol
		#	puts "user selected espanol"
		#end
end