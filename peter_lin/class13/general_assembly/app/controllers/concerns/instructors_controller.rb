class InstuctorsController < ApplicationController

  def show
    @course = Course.find(params[:id])
    @instuctors = Course.instructors
  end

  

end