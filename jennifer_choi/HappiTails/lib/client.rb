class Client
	attr_accessor :name, :age, :pets

	def initialize(name, age, pets)
		@name = name
		@age = age.to_i
		@pets = []
	end


	def show_pets
		i = 1
		@pets.each do |pet|
			puts "#{i}. #{pet.name}"
			i += 1
		end
	end

	def to_s
		puts "Client #{@name} is #{@age} years old and they have #{@pets.length} pets."
	end

end