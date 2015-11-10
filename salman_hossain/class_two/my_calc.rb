puts "What would you like to do? ('add', 'subtract', 'multiply', 'divide')"
operation = gets.chomp

if operation == ""
	puts "We did not recieve any digit from you, please try again"
	exit
end


case operation
when "add", "subtract", "multiply", "divide"
if operation == "add"
	puts "Yay! lets start some addtion today"
	puts "Please enter your first number for your addition"
elsif operation == "subtract"
	puts "Yay! lets start some subtaction today"
	puts "please enter your first number for your subtraction"
elsif operation == "multiply"
	puts "Yay! lets start multiplication today"
	puts "Please enter your first number for your multiplication"
else operation == "divide"	
	puts "Yay! lets start some division today"
	puts "Please enter your first number for your division"
end
end

num1 = gets.chomp.to_i

case operation
when "add", "subtract", "multiply", "divide"
if operation == 'add'
	puts "Please enter your second number for your addition"
elsif operation == 'subtract'
	puts "Please enter your second number for your subtraction"
elsif operation == 'multiply'
	puts "Please enter your second number for your multiplication"
else operation == "divide"
	puts "Please enter your second number for your division"
end
end

num2 = gets.chomp.to_i

def add(a, b)
    a + b
end

def subtract(c, d)
    c - d
end

def multiply(e, f)
	e * f
end

def divide(g, h)
	g / h
end

if operation == 'add'
	answer = add(num1, num2)
elsif operation == 'subtract'
	answer = subtract(num1, num2)	
elsif operation == 'multiply'
	answer = multiply(num1, num2)
elsif operation == 'divide'
	answer = divide(num1, num2)
else

	display_message = <<EOM
	--- You have entered something crap, go fix your crap.

	-- You can try again here is the list of operation you can do "add",
		"subtact", "multiply", "divide"
		--- Thank you
EOM

	puts display_message

end

# puts "answer is nil: #{answer.nil?}"

unless answer.nil?
if 	operation == 'add'
	puts "Your addition result is #{answer}"
elsif operation == 'subtarct'
	puts "Your subtraction result is #{answer}"
elsif operation == 'multiply'
	puts "Your multiplication result is #{answer}"
else operation == 'divide'
	puts "Your division result is #{answer}"
end	
end