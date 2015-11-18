class Student
  attr_accessor :name, :major, :gpa

  def initialize(name, major, gpa)
    @name = name
    @major = major
    @gpa = gpa
  end

  def to_s
    "#{ @name } majors in #{ @major }. GPA: #{ @gpa }"
  end

  def passing?
    if @gpa.upcase > "C" 
      return false
    else
      true
    end
  end
  
end

alice = Student.new("Alice", "Math", "A")
bob = Student.new("Bob", "Music", "C")
carlos = Student.new("Carlos", "English", "D")
dave = Student.new("Dave", "English", "F")

students = [ alice, bob, carlos, dave]

students.each do |person|
  puts person
  if !person.passing?
    puts "Failure!"
  end

end