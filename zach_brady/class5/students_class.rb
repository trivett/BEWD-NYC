class Student
    attr_accessor :name, :gpa, :major

    def initialize(name, gpa, major)
        @name = name
        @gpa = gpa
        @major = major
    end

    def to_s
        "#{ @name } majors in #{ @major }. GPA: #{ @gpa }."
    end
end


alice = Student.new("Alice", "A", "Math")
bob = Student.new("Bob", "B", "Lit")
carlos = Student.new("Carlos", "C", "Chemistry")

students = [alice, bob, carlos]

students.each do |student|
    puts student
end
