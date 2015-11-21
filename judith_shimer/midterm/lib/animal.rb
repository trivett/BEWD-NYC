class Animal
	attr_accessor :name, :species, :toys
	def initialize
		@name = name
		@species = species
		@toys = []
	end

	def to_s
		"My name is #{@name} and I am a #{@species}!"
	end
end