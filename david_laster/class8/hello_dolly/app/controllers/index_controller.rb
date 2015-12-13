class IndexController < ApplicationController
	def dolly
		@message = "hello dolly!"
	end
	def roger
		@message = "farewell, roger!"
	end
end