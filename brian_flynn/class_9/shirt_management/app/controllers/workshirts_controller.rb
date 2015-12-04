class WorkshirtsController < ApplicationController

  def index
    @workshirts = Workshirt.all
  end

    def show
    @tshirt = Tshirt.find(params[:id])
  end

end
