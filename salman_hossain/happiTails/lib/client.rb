class Client 
	attr_accessor :name, :age, :pets

	def initialize(name, age)
		@name = name
		@age = age
		@pets = []
	end

	def to_s

	"Here is your client name #{@name} and client age is #{@age}"

	end


	def show_pets_all_pets
		if !@pets.empty?
	    	puts "select a client"

			@pets.each do |b|

			"#{pets.index(b)+1} #{b}"
			end

		else
			puts "Sorry there is no pets available."
			exit 
		end
	end

end
