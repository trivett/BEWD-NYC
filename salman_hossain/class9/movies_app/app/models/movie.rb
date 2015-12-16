class Movie < ActiveRecord::Base

	def self.search(search)
  		if search
    		Movie.where("title LIKE ?", "%#{search}%")
  		else
    		Movie.all
  		end
	end
	validates :title, length: { minimum: 3 }

	validates :description, length: { minimum: 3 }

end
