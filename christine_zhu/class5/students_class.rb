class Student
	attr_accessor :name, :gpa, :major

	def initialize(name, gpa, major)
		@name = name	
		@gpa = gpa
		@major = major
	end


	def to_s
		"#{@name} majors in #{@major}. GPA: #{@gpa}"

	end

	def passing? #? when a method is going to return a boolean value. Simply semantic value.
		if @gpa >"D"
			return false
		else
			return true
		end
	end	

end

alice = Student.new("alice", "A", "Math") #need to set all the attributes

puts alice.passing?

students.each do |student|
	puts student
	if student.passing?
		puts "You graduate!"
	else 
		puts "you fail!"
	end
end


# alice = Student.new

# alice.name = "alice"
# alice.gpa = "A"
# alice.major = "math"


# puts alice.name
# puts alice.gpa
# puts alice.major



