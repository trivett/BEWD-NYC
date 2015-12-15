class Product < ActiveRecord::Base
	validates :price, presence: true, length: {minimum: 4}
end
