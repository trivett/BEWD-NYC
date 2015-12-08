class Person
	attr_accessor :height, :weight, :hair_color, :name, :age

		def initialize(height, weight, hair_color, name, age)
			@height = height #instance variable represents attributes on that particular class. 
			@weight = weight
			@hair_color = hair_color
			@name = name
			@age = age
		end

	def to_s
	"#{@name} is #{@height} tall and weighs #{@weight} pounds and has #{@hair_color} hair."
	end

	def am_i_old?
		if @age > 18
			return true
		else 
			return false
	end

end

	

bob = Person.new("5ft 5in", "200", "black", "Bob", 18)
sally = Person.new("5ft 6", "125", "blonde", "Sally", 15)
joe = Person.new("6ft", "150", "grey", "Joe", 100)

people_group = [bob, sally, joe]
	
	people_group.each do |x|
		puts x
		puts 
	end







