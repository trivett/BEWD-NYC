puts "What would you like to do? ('add', 'subtract', 'multiply', 'divide')"
opperation = gets.chomp

def add(num1, num2)
	answer = num1 + num2
end
def subtract(num1, num2)
	answer = num1 - num2
end
def multiply(num1, num2)
	answer = num1 * num2
end
def divide(num1, num2)
	answer = num1 / num2
end

if opperation == "add" || opperation == "subtract" || opperation == "multiply" || opperation == "divide"
	puts "What's the first number?"
	num1 = gets.chomp.to_i

	puts "what's the second number?"
	num2 = gets.chomp.to_i

	if opperation == "add"
		answer = add(num1, num2)
	elsif opperation == "subtract"
		answer = subtract(num1, num2)
	elsif opperation == "multiply"
		answer = multiply(num1, num2)
	else opperation == "divide"
		answer = divide(num1, num2)
	end
	 puts "The answer you seek is #{answer}"

	else

		puts "Sorry, incorrect operation"

end

