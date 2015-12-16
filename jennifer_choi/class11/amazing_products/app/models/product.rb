class Product < ActiveRecord::Base
	validates :price, presence: true
	validates :price, length: {minimum:4}
end
