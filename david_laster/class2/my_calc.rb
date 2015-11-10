puts "What would you like to do? ('add', 'subtract', 'multiply', 'divide')?"
operation = gets.chomp
puts "enter the first number"
num1 = gets.chomp.to_i
puts "enter the second number"
num2 = gets.chomp.to_i

def add(x,y)
	x + y
end

def subtract(x,y)
	x - y
end

def multiply(x,y)
	x * y
end

def divide(x,y)
	x / y
end

def modular(x,y)
	x % y
end

def calc(operation, num1, num2)
if operation == "add"
	add(num1,num2)
elsif operation == "subtract"
	subtract(num1,num2)
elsif operation == "multiply"
	multiply(num1,num2)
elsif operation == "divide"
	divide(num1,num2)
else
	"unknown without a valid operation"
end
end

result = calc(operation, num1, num2)

puts "the answer is #{result}"