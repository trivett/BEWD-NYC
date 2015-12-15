class Movie < ActiveRecord::Base
	validates :title, presence: true, length: {is: 4}
end
