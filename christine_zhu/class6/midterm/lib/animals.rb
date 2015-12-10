
class Animal
	attr_accessor :petname, :species, :breed, :toys, :age, :owner

	def initialize(petname, species, breed, age)
		@petname = petname
		@species = species
		@breed = breed
		@toys = []
		@age = age
		@owner = []
	end

	def adopted_by(new_owner)
		@owner << new_owner
	end

def to_s
	"Name: #{@petname} | Species: #{@species} | #{@breed} | #{@age}"
end

end
