class Person
	attr_accessor :name, :age
	def initialize(name,age)
		@name = name
		@age = age.to_i
	end

	def to_s
		"#{@name} is #{@age} years old."
	end

	def birthday
		@age += 1
	end
end