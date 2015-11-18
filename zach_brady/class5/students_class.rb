class Student
    attr_accessor :name, :gpa, :major, :age

    def initialize(name, gpa, major, age)
        @name = name
        @gpa = gpa
        @major = major
        @age = age
    end

    def to_s
        "#{ @name } majors in #{ @major }. GPA: #{ @gpa }. They are #{ @age } years old."
    end

    def passing?
        if @gpa > "D"
            return false
        else 
            return true
        end
    end

    def another_year_gone
        @age= @age + 1
    end
end

alice = Student.new("Alice", "A", "Math", 18)
bob = Student.new("Bob", "B", "Lit", 20)
carlos = Student.new("Carlos", "C", "Chemistry", 23)

# students = [alice, bob, carlos]

# students.each do |student|
#     puts student
# end

puts bob
bob.another_year_gone
puts bob
