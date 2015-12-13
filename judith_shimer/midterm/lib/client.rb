class Client
	attr_accessor :name, :age, :pets
	def initialize(name,age)
		@name = name
		@age = age.to_i
		@pets = []
	end

	def to_s
		"My name is #{@name} and I am #{@age} years old!"
	end

	def display_pets
		@pets.each_with_index do |animal, index|
			puts "#{animal} [#{index + 1}]"
		end
	end
end