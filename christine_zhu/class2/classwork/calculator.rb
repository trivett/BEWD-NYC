puts "Let's do some math! Select an action: addition, multiplication, subtraction, division, or modular divison."
action = gets.chomp.downcase

while action != "addition" && action != "multiplication" && action != "subtraction" && action != "division" && action != "modular division"
	puts "Please try again."
	puts "Don't be difficult! Please select one of the following: addition, multiplication, subtraction, or division."
	action = gets.chomp.downcase
end

puts "Now please select two integers to perform #{action} on."
num1= gets.chomp.to_i
num2= gets.chomp.to_i

def add_action(a,b)
	a+b
end

def multiply_action(a,b)
	a*b
end

def subtract_action(a,b)
	a-b
end

def divide_action(a,b)
	a/b.to_f
end

def moddivide_action(a,b)
	a%b.to_f
end

if action == "addition" 
	puts "Your answer is #{add_action(num1,num2)}"
elsif action == "multiplication"
	puts "Your answer is #{multiply_action(num1,num2)}"
elsif action == "subtraction"
	puts "Your answer is #{subtract_action(num1,num2)}"
elsif action == "division"
	puts "Your answer is #{divide_action(num1,num2)}"
elsif action == "modular division"
	puts "Your answer is #{moddivide_action(num1, num2)}"

end




