require_relative 'client'

class Shelter
	attr_accessor :name, :animals, :clients

	def initialize(name)
		@name = name
		@animals = []
		@clients = []
	end

	def to_s
		"#{@name}"
	end


	def display_all_animals
		if @animals.any?
				@animals.each do |animal|
					puts "#{@animals.index(animal)+1} #{animal}"
				end
			else
				puts " Sorry there is no animal available."
			end
	end

	def display_all_client
				
		if !@clients.empty?
			@clients.each do |b|

			puts "#{clients.index(b)+1} #{b}"
			end
		else
			puts "Sorry there is no clients available."
		end
	end

	def adopt_animal 
	 	if 	@animals != []
            puts "Please select animal from the list to adopt"
            display_all_animals
            desired_pet_num = gets.chomp.to_i-1
            animal = @animals[desired_pet_num]

            puts "select a client from the list"
            display_all_client
            client_num = gets.chomp.to_i-1
            ct = @clients[client_num]

            animal = @animals.delete_at(desired_pet_num)
          
            puts "Your animal is successfully added to client #{animal.name}"

        else 
            puts "There are no pets available for adoption. Please try again some other day"
        end
    end

    def put_up_for_adoption

    	display_all_client
    	client_num = gets.chomp.to_i-1
    	ct = @clients[client_num]

    	puts "Select any animal from the list"
    		ct.show_pets_all_pets
    	num = gets.chomp.to_i-1

         animal = ct.pets.delete_at(num)
         @animals.push(animal)
         puts "Your animal is successfully added to shelter #{@animals.last}"
     
    end
 
end	


