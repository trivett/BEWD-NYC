class Student
	#comma separated list of symbols
	attr_accessor :name, :gpa, :major

	def initialize (name, gpa, major)
		#preface each instance variable with the @ symbol
		@name = name
		@gpa = gpa
		@major = major
	end


end

puts alice.passing?

#instantiating new class
alice = Student.new("Alice", "A", "Math")

puts alice