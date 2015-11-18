class Person
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
        @age += 1
    end
end

#alice = Person.new("Alice", "A", "Math", 18)
bob = Person.new("Bob", "B", "Lit", 20)
#carlos = Person.new("Carlos", "C", "Chemistry", 23)

# people = [alice, bob, carlos]

# people.each do |person|
#     puts people
# end

puts bob
bob.another_year_gone
puts bob
