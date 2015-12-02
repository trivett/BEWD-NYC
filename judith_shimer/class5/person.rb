class Person
	attr_accessor :name, :height, :eyecolor, :haircolor, :age
	def initialize(name,height,eyecolor,haircolor,age)
		@name = name
		@height = height
		@eyecolor = eyecolor
		@haircolor = haircolor
		@age = age.to_i
	end

	def to_s
		"#{@name} is #{@height} inches tall, #{@age} years old, has #{@eyecolor} eyes, and #{@haircolor} hair."
	end

	def birthday
		@age += 1
	end
end

	judith = Person.new("Judith","5ft 6in","hazel","black","27")
	jess = Person.new("Jess","5ft 4in","brown","blonde","28")
	esty = Person.new("Esty","5ft 5in","brown","red","32")
	nancy = Person.new("Nancy","5ft 3in","blue","gray","62")

people = [judith,jess,esty,nancy]

people.each do |person|
	person.birthday
	puts person
end