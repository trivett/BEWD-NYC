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
end

alice = Student.new("Alice", "Math", "A")
bob = Student.new("Bob", "Music", "C")
carlos = Student.new("Carlos", "English", "D")

students = [ alice, bob, carlos]

students.each do |person|
  puts person
end