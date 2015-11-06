puts "give me the first number"
num1 = gets.chomp.to_i
puts "give me the second number"
num2 = gets.chomp.to_i

def add(x,y)
	x + y
end

def subtract(x,y)
	x - y
end

puts "the answer, added, is #{add(num1,num2)}, and subtracted is #{subtract(num1,num2)}"