class WorkshirtsController < ApplicationController



    def show
        @tshirt = Workshirt.find(params[:id])
    end
  end


end
