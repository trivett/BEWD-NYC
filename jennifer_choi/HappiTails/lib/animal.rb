class Animal
	attr_accessor :name, :species, :toys

	def initialize (name, species)
		@name = name
		@species = species
		@toys = []
	end

	#def add_toy
	#	@toys << toy
	#end

	def to_s
		puts "Pet #{@name} is a #{@species} and they have #{@toys.length} toys."
	end
end

