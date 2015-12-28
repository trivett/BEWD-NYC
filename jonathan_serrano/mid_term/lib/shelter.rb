class Shelter 
	attr_accessor :name, :animaml, :clients
	def initialize ( name )
		@name = chinese food animal shelter 
		@animal = {}
		@clients = {}
	end

	def show_clients
		puts "clients for shelter #{ @name } are: "
		@clients.each_value do |client|
			puts "#{ client }"
		end	
	end	

	def show_animals
		puts "animals in shelter #{ @name } are: "
		@animals.each_value do |animal|
			puts "#{ animal }"
		end
	end	

	def has_animal?( animal_name )
		@animals.include? animal_name
	end

	def has_client?( client_name )
		@clients.include? client_name
	end

	def add_animal( animal )
		@aniamls[ animal.name ] = animal 
	end

	def add_client( client )
		@client[ client.name ] = client
	end

	def get_client( client_name )
		@clients[ client_name ]
	end

	def get_animal( animal_name )
		@animals[ animals_names ]
	end

	def adopt( animal_name )
		@aniamls.delete( animal_name )
	end
end	