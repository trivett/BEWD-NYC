require_relative 'animal.rb'

class Shelter
	attr_accessor :name, :animals, :clients

	def initialize(name)
		@name = name
		@animals = []
		@clients = []
	end

	def show_animals
		@animals.each do |animal|
			puts "#{animal}"
		end
	end

	def show_clients
		@clients.each do |client|
			puts "#{clients}"
		end
	end

	def add_animal(animal)
		@animals << animal
	end

	def add_client(client)
		@clients << client
	end

	def adopt(client, animal)
		client.pets << animal
		@animals.delete(animal)
	end

  def to_s
  	puts "This is the #{@name} shelter."
  end
end