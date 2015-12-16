class CompaniesController < ApplicationController
	
	def index
		@companies = Company.all
		#@companies = Company.all.order(number_of_employees: :desc)
		#doesn't need to include all
	end

	def ranking
		@ranking = Company.all.order(market_capitalization: :desc)
	end

	def cities
		@city = params[:city]
		@companies = Company.where(city: params[:city])
		#where filters the query, with what you're looking for
	end

	def market_cap
		@ranking = Company.all.order(market_capitalization: :desc)
	end

	def profit
		@profit = Company.all.order(profit: :desc)
	end

	def show
		@company = Company.find(params[:id])
	end

	def destroy
		Company.find(params[:id]).destroy
		redirect_to company_path
	end
end