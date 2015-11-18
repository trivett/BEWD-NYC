class Student
    attr_accessor :name, :gpa, :major
end

alice = Student.new

alice.name = "Alice"
alice.gpa = "A"
alice.major = "Math"

puts alice.name
puts alice.gpa
puts alice.major
