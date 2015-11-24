class Client
	attr_accessor :name, :age, :pets
	def initialize(name,age)
		@name = name
		@age = age.to_i
		@pets = []
	end

	def to_s
		"Name: #{@name} Age: #{@age}"
	end

# def new_client(c)
#   puts "Enter the Client's name:"
#   name = gets.chomp

#   puts "Enter the Client's age:"
#   age = gets.chomp.to_i
#   c.clients << Client.new(name,age)
# end

end