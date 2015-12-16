class WorkshirtsController < ApplicationController

  def index
    @workshirts = Workshirt.all
  end

  def show
    # puts params
    @workshirts = Workshirt.find(params[:id])
  end

end