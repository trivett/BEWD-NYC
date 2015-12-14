class CompaniesController < ApplicationController

	def index
		@companies = Company.all
	end

	def rankings
		@companies = Company.order(market_capitalization: :desc)
	end

	def cities
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