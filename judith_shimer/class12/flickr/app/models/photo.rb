class Photo < ActiveRecord::Base
	belongs_to :user
	validates :caption, length: {maximum: 140}
	validates :url, uniqueness: {case_sensitive: false, message: "This image already exists in the database."}
end