class GreetsController < ApplicationController

  def hi
    puts "params here!"
    puts params[:language]

    @language = params[:language]

    if @language.downcase == "spanish"
      @greeting = "hola"
    elsif @language.downcase =="english"
      @greeting = "hello"
    else
      @greeting = "select a language "
    end
      
  end

  # def english
  #   puts 'User selected english'
  # end

  # def espanol
  #   puts 'User selected espanol'
  # end

end
