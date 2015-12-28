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

  def passing?
    if @gpa > "D"
      return false
    else
      return true
    end
  end


end

alice = Student.new("Alice", "A", "Math")
bob = Student.new("Bob", "C", "Music")
carlos = Student.new("Carlos", "F", "English")

all = [alice, bob, carlos]

all.each do |x|
  puts x
  if x.passing?
    puts "you graduate!"
  else
    puts "you fail!"
  end
end





