def add(a, b)
	puts a + b
end

def subtract(a, b)
	puts a - b
end

def multiply(a, b)
	puts a * b
end

def divide(a, b)
	puts a / b
end

def modular_division(a, b)
	puts a % b
end

def print_answer()
	print 'The answer is '
end

puts "What would you like to do? (add, subtract, multiply, divide, modular_division)"
operation = gets.chomp

puts "Give me the first number"
num1 = gets.chomp.to_i

puts "Give me the second number"
num2 = gets.chomp.to_i

if operation == "add"
	print_answer()
	add(num1,num2)
elsif operation == "subtract"
	print_answer()
	subtract(num1,num2)
elsif operation == "multiply"
	print_answer()
	multiply(num1,num2)
elsif operation == "divide"
	print_answer()
	divide(num1,num2)
elsif operation == "modular_division"
	print_answer()
	modular_division(num1,num2)
else
	puts "Invalid operation. Try again."
end





