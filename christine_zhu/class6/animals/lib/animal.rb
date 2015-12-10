
class Animal

attr_accessor :gender, :age, :breed, :size, :name

	def initialize (gender, age, breed, size, name) #sets all of these attributes at once
		@gender = gender
		@age = age
		@breed = breed
		@size = size
		@name = name
	end

	

	def to_s
		"Hi, this #{@breed.capitalize} is up for adoption! #{self.to_pronoun.capitalize} is #{@age} years old, and #{self.alt_pronoun} name is #{@name}. #{@name} is a #{@size} #{self.class.to_s.downcase} and would be perfect for you!"
	end

	def to_pronoun
			if @gender == "female"
				"she"
			else 
				"he"
			end
	end	

	def alt_pronoun
		if @gender == "female"
			"her"
		else 
			"his"
		end
	end

end
