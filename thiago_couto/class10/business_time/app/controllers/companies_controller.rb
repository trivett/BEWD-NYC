class CompaniesController < ApplicationController
	def index
		@companies = Company.all
	end

	def ranking
		@companies = Company.order(number_of_employees: :desc)
	end

	def cities
		@city = params[:city]
		@companies = Company.where(city: @city)
	end
end
