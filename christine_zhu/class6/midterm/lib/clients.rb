require_relative 'animals'


class Client
	attr_accessor :name, :age, :address, :client_pets, :join_date

	def initialize (name, age, address, join_date)
		@name = name
		@age = age
		@address = address
		@join_date = join_date
		@client_pets = []	
	end

	def adopt_pet(new_pet)
		client1.client_pets << new_pet
	end

	def to_s
		if @client_pets.empty?
			"Hi, my name is #{@name} and I live at #{@address}! I am looking to adopt a pet!"
		else 
			"Hi, my name is #{@name}. I live at #{@address}, and I just adopted a #{@client_pets[0].species} named #{@client_pets[0].petname}."
		end		
	end	

	def print_client_pets
		@client_pets.each do |pets|
			puts "#{@client_pets.index(pets) + 1}. #{pets.petname}"
		end
	end

end



# client1.client_pets << pet1

# client1.client_pets.each do |pet|
# 	puts pet.name
# end