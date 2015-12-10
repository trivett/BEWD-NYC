class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end  

  def rankings
    @companies = Company.order(market_cap: :desc)
  end

  def cities
    @city = params[:city] 
    @companies = Company.where(city: @city)
  end

  def show
    @company = Company.find(params[:id])
  end

  def destroy
    Company.find(params[:id]).destroy
    redirect_to companies_path
  end

end















