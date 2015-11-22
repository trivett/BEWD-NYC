class Animal
	attr_accessor :name, :species, :toys
	def initialize(name,species)
		@name = name
		@species = species
		@toys = []
	end

	def to_s
		"Name:#{@name} Species:#{@species}"
	end
end