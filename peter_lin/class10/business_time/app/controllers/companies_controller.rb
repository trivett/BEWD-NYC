class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def marketcap
    # @companies = Company.all.sort_by { |h| -h[:number_of_employees] }
    @companies = Company.order(market_capitalization: :desc)
  end

  def profitmargin
    # @companies = Company.all.sort_by { |h| -h[:number_of_employees] }
    @companies = Company.order(profit_margin: :desc)
  end

  def cities
    @city = params[:city]
    @companies = Company.where(city: params[:city])
  end

  def show
    @company = Company.find(params[:id])
  end

  def destroy
    Company.find(params[:id]).destroy
    redirect_to companies_path
  end

end