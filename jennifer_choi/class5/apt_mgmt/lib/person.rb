class Person
	attr_accessor :name, :hairColor, :age, :grade

	def initialize (name, hairColor, age, grade)
		@name = name
		@hairColor = hairColor
		@age = age
		@grade = grade
	end

	#overriding previous method
	def to_s
		"#{@name} turns #{@age} this year, with #{@hairColor} hair and has grade #{@grade}"
	end


	#custom method
	def passing?
		if @grade < "D"
			return true
		else
			return false
		end
	end
  
	def birthday
		@age +=1
	end

end

jason = Person.new("Jason", "brown", 39, "A")
mary = Person.new("Mary", "blonde", 40, "B")
hannah = Person.new("Hannah", "black", 39, "F")

arr = [jason, mary, hannah]

arr.each do |person|

	person.birthday
	puts person

	if person.passing?
		puts "You graduate."
	else
		puts "You fail!"
	end

end