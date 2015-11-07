puts "What would you like to do? ('add', 'subtract', 'multiply', 'divide')"
oper = gets.chomp

puts "Enter your first number:"
num1 = gets.chomp.to_i

puts "Enter your second number:"
num2 = gets.chomp.to_i

def add(a, b)
	a + b
end

def sub(a, b)
	a - b
end

def mult(a, b)
	a * b
end

def div(a, b)
	a / b
end

def rem(a, b)
	a % b
end

def calc(oper, num1, num2)
	if oper == "add"
		puts "#{ num1 } plus #{ num2 } equals #{ add(num1, num2) }"
	elsif oper == "subtract"
		puts "#{ num1 } minus #{ num2 } equals #{ sub(num1, num2) }"
	elsif oper == "multiply"
		puts "#{ num1 } times #{ num2 } equals #{ mult(num1, num2) }"
	elsif oper == "divide"
		puts "#{ num1 } divided by #{ num2 } equals #{ div(num1, num2) } with a remainder of #{ rem(num1, num2) }"
	else
		puts "You did not enter a valid operator"
	end
end

puts calc(oper, num1, num2)