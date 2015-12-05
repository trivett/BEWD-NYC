class TshirtsController < ApplicationController

  def index
    @tshirts = Tshirt.all
  end


  def show
    # puts params
    @tshirt = Tshirt.find(params[:id])
  end

end