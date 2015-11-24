class Animal
	attr_accessor :name, :species, :toys

	def initialize(name,species)
		@name = name
		@species = species
		@toys = []
	end

	def to_s
		"Name: #{@name} Species: #{@species}"
	end

#   def new_animal(a)
#   puts "Enter the Animal's Name:"
#   name = gets.chomp

#   puts "Enter the Animal's Species:"
#   species = gets.chomp
#   a.animals << Animal.new(name,species)
# end


end
