require_relative 'animals'
require_relative 'clients'

class Shelter
	attr_accessor :number_clients, :number_pets, :clients, :shelter_pets

	def initialize
		@number_clients = 0
		@number_pets = 0
		@clients = []
		@shelter_pets = []
	end

	def add_new_client
		puts "Please enter client name."
		name = gets.chomp
		puts "Please enter address."
		address = gets.chomp
		puts "Please enter age"
		age = gets.chomp.to_i
		puts "Please enter join date"
		join_date = gets.chomp
		new_client = Client.new(name, age, address, join_date)
		@clients << new_client
	end

	def add_new_pet
		puts "Please enter pet name:"
		petname = gets.chomp
		puts "Please enter species:"
		species = gets.chomp
		puts "Please enter breed:"
		breed = gets.chomp
		puts "Please enter age:"
		age = gets.chomp.to_i
		new_pet = Animal.new(petname, species, breed, age)
		@shelter_pets << new_pet
	end

	def print_petlist
		@shelter_pets.each do |pet|
			puts "#{@shelter_pets.index(pet) + 1}. #{pet}"
		end
	end

	def pet_adoption
		if @shelter_pets != []
			puts "Please select one of the below pets for adoption using the corresponding number."
			print_petlist 
			desired_pet_num = gets.chomp.to_i-1
			adoptee = @shelter_pets[desired_pet_num]
			@shelter_pets.delete_at(desired_pet_num)
			puts "Which client is adopting #{adoptee.petname}? Select by number."
			print_clientlist
			client_num = gets.chomp.to_i-1
			adopter = @clients[client_num]
			adopter.client_pets << adoptee
		else 
			puts "There are currently no pets available for adoption."
		end
	end

	
	def pet_return
		puts "To begin returning a pet, please select a client from the list of clients using the corresponding number."
		print_clientlist
		client_return = gets.chomp.to_i-1
		selected_client = @clients[client_return]
		selected_client.print_client_pets
		puts "Please select pet for return using the corresponding number."		
		selected_pet = gets.chomp.to_i-1
		arriving_pet = selected_client.client_pets.delete_at(selected_pet)
		@shelter_pets << arriving_pet
		print_petlist
	end	

	def print_clientlist
		@clients.each do |client|
			puts "#{@clients.index(client) + 1}. #{client.name}"
		end
	end

	def total_clients
		puts "Current number of clients: #{@number_clients += @clients.length}."
	end

	def view_all_clients
		@clients.each do |client|
			if client.client_pets == []
				puts "#{client.name} is #{client.age} years old and is looking to adopt a pet."
			else 
				puts "#{client.name} is #{client.age} years old and has adopted #{client.client_pets}"
			end
		end
	end

	# def create_new_shelter
	# 	puts "Please enter name of shelter."
	# 	@shelter_name = gets.chomp
	# 	puts "Please enter address of shelter"
	# 	@shelter_address = gets.chomp
	# 	new_shelter = Shelter.new(@shelter_name, @shelter_address)
	# end

end

	

	

	
