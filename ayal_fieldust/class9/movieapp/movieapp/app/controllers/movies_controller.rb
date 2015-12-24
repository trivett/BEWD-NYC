class MoviesController < ApplicationController



    def index
        @movies = Movie.all
    end

    def show
        @movie = Movie.find(params[:id])
    end

    def destroy
      Movie.find(params[:id]).destroy
      redirect_to movies_path
    end

    def new
        @movie = Movie.new
    end

    def create
        @movie = Movie.new(safe_product_param)
        if @movie.save
          flash[:notice] = "NEW MOVIE CREATED."
          redirect_to movies_path
        else
          flash[:notice] = "MOVIE NOT ADDED. TRY AGAIN."
          redirect_to new_movie_path
        end
    end


    private

    def safe_product_param
        params.require(:movie).permit(:title, :description, :year_released)
    end
      #
      # def create
      #     @product = Product.new(safe_product_param)
      #     if @product.save
      #       flash[:notice] = "Product created! "
      #       redirect_to products_path
      #     else
      #       flash[:notice] = "Didnt work! "
      #       redirect_to new_product_path
      #   end
      # end
      # private
      # def safe_product_param
      #     params.require(:product).permit(:name, :price) # only name and price will be able to be accessed. good againsed hackers.
      # end
      #
      #





end




  # def index
  #   @companies = Company.all #must be singular!
  # end
