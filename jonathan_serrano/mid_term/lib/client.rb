class Client 
	attr_accessor :names, :age, :pets
	def initialize( name, age )
		@name = name
		@age = age 
		@pets = {}
	end
	def adopt_pet ( pet )
		@pets[ pet.name ] = pet
	end
	def to_s
		"#{ @name }"
	end
	def has_aniaml?( pet_name )
		@pets.include? pet_name
	end
end	