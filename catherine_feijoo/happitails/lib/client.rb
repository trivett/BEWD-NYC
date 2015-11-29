class Client
	attr_accessor :name, :age, :pets

	def initialize( name, age )
		@name = name
		@age = age
		@pets = {}
	end

	def adopt_pet( pet )
		@pets[ pet.name ] = pet
	end

	def abandon_pet( pet )
		@pets.delete( pet )
	end

	def to_s
		"#{ @name }"
	end

	def has_animal?( pet_name )
		@pets.include? pet_name
	end

end