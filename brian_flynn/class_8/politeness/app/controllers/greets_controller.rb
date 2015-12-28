class GreetsController < ApplicationController

  def hi
    puts "params here!"
    puts params[:language]

    @language = params[:language]
    if @language == "spanish"
      @greeting = "hola"
    elsif @language == "english"
      @greeting = "hello"
    else
      @greeting = "request language plz"
    end

  end

  # def english

  # end

  # def espanol

  # end

  # def home

  # end


end
