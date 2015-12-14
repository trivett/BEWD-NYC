class Animal
	attr_accessor :name, :species

	def to_s
		puts "Animal #{@name} is a #{@species}."
	end
	
	def initialize (name, species)
		@name = name
		@species = species
	end
end

