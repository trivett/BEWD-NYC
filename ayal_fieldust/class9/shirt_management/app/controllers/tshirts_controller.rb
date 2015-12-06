class TshirtsController < ApplicationController

  def index
      @tshirts = Tshirt.all
  end


  def show
      @tshirt = Tshirt.find(params[:id])
  end
end
