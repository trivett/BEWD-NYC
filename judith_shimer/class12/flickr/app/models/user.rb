class User < ActiveRecord::Base
	has_many :photos
	validates :email, uniqueness: {case_sensitive: false, message: "This email is already registered."}
end