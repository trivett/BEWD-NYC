class GreetsController < ApplicationController

  def index
    greeting = params[:greeting]
    name = params[:name]

    @toPrint = "#{ greeting } #{ name } !"
  end

end