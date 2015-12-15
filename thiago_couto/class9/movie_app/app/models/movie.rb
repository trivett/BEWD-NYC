class Movie < ActiveRecord::Base
	validates :release, presence: true, length: {is: 4}
	validates :description, length: {minimum: 4}
	validates :title, presence: true, length: {minimum: 1}
end