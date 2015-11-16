puts "What would you like to do?"
function = gets.chomp.to_s

puts "Enter the first number"
num1 = gets.chomp.to_i

puts "Enter the second number"
num2 = gets.chomp.to_i

def add(a,b)
  a + b
	end

def subtract(a,b)
	a - b 
	  end

def multiply(a,b)
	a * b
	  end

def divide(a,b)
	a / b
	  end

def modulardivision(a,b)
	a % b
	  end

if function == "add"
	answer = add(num1,num2)

elsif function == "subtract"
	answer = subtract(num1,num2) 

elsif function == "multiply"
	answer = multiply(num1,num2)

elsif function == "divide"
	answer = divide(num1,num2)

else function == "modulardivision"
	answer = modulardivision(num1,num2)
end

puts "Drumroll...and the answer is #{answer} "