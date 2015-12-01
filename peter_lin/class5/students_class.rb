class Student
  attr_accessor :name, :gpa, :major

  def initialize(name, gpa, major)
    @name = name
    @gpa = gpa
    @major = major
  end

  def to_s
    "#{ @name } majors in #{ @major }. GPA: #{ @gpa }"
  end

  def passing?
    if @gpa > "D"
      return false
    else
      return true
    end
  end
end



alice = Student.new("alice", "A", "Math")
bob = Student.new("Bob", "C", "Music")
carlos = Student.new("Carlos", "F", "English")

students = [alice, bob, carlos]

students.each do |student|
  puts student
  if student.passing?
    puts 'You pass!'
  else
    puts 'You fail!'
  end
end



puts alice
