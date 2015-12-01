class Shelter
	attr_accessor :name, :animals, :clients

	def initialize( name )
		@name = name
		@animals = {}
		@clients = {}
	end

	def show_clients
		puts "clients for shelter #{ @name } are: "
		@clients.each_value do |client|
			puts "#{ client } "
		end
	end

	def show_animals
		puts "animals in shelter #{ @name } are: "
		@animals.each_value do |animal|
			puts "#{ animal } "
		end
	end

	def has_animal?( animal_name )
		@animals.include? animal_name
	end

	def has_client?( client_name )
		@clients.include? client_name
	end

	def add_animal( animal )
		@animals[ animal.name ] = animal
	end

	def add_client( client )
		@clients[ client.name ] = client
	end

	def get_client( client_name )
		@clients[ client_name ]
	end

	def get_animal( animal_name )
		@animals[ animal_name ]
	end

	def adopt( animal_name )
		@animals.delete( animal_name )
	end

end