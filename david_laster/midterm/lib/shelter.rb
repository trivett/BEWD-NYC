class Shelter
	attr_accessor :name, :animals, :clients
	def initialize(name)
		@name = name
		@animals = []
		@clients = []
	end

	def to_s
		system "clear" or system "cls"
		"
		888    888                            d8b 88888888888       d8b 888          
		888    888                            Y8P     888           Y8P 888          
		888    888                                    888               888          
		8888888888  8888b.  88888b.  88888b.  888     888   8888b.  888 888 .d8888b  
		888    888     \"88b 888 \"88b 888 \"88b 888     888      \"88b 888 888 88K      
		888    888 .d888888 888  888 888  888 888     888  .d888888 888 888 \"Y8888b. 
		888    888 888  888 888 d88P 888 d88P 888     888  888  888 888 888      X88 
		888    888 \"Y888888 88888P\"  88888P\"  888     888  \"Y888888 888 888  88888P' 
                	            888      888                                             
                	            888      888                                             
                	            888      888                                             
		"
	end

	def display_animals
		puts @animals
	end

	def display_clients
		puts @clients
	end
end