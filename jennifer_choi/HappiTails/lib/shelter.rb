require_relative 'animal.rb'

class Shelter
	attr_accessor :name, :animals, :clients

	def initialize(name)
		@name = name
		@animals = []
		@clients = []
	end

	def show_animals
		i = 1
		@animals.each do |animal|
			puts "#{i}. #{animal.name}"
			i +=1
		end
	end

	def show_clients
		i = 1
		@clients.each do |client|
			puts "#{i}. #{client.name}"
			i +=1 
		end
	end

	def add_animal(animal)
		@animals << animal
	end

	def add_client(client)
		@clients << client
	end

  	def to_s
  		puts "This is the #{@name} shelter."
  	end
end