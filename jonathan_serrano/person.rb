class Person
	attr_accessor :name, :likes, :hates, :eye
	def initialize (name, likes, hates, age, eye) #make a custom class
		@name = name #instants varible, it only works insde this class
		@likes = likes
		@hates = hates
		@age = age.to_i
		@eye = eye
	end

	def to_s
		"#{@name} likes #{@likes} and hates #{@hates} is #{@age} years old. your eyes are also #{eye}"
	end
	
	def old?
		if @age >= 29
			puts "you're getting old"
		else
			puts "you're a little young"
		end
	end

	def good?
		if @likes == "Cats"
			return false
		else
			return true
		end
	end
end


alice = Person.new("Alice", "Dogs", "Math", "30", "brown")
james = Person.new("James", "Dogs", "Drawing", "15", "green")
jose = Person.new("Jose", "Cats", "Fishing", "72", "blue")
arr =[alice,james,jose]
arr.each do |person|
	puts person
	if person.good?
		puts "glad you like cats"
	else 
		puts "dogs are cool too"
	end
	person.old?
end