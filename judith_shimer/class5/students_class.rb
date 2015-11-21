class Student
	attr_accessor :name, :gpa, :major
	def initialize(name,gpa,major)
		@name = name
		@gpa = gpa
		@major = major
	end
end

judith = Student.new("Judith","4.0","Web Development")
