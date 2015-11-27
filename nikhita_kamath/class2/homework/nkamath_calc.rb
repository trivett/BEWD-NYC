ask_for_input = "Whatcha wanna do, bro? ('add', 'subtract', 'multiply', 'divide' 'divide to find a remainder')"

puts ask_for_input
function = gets.chomp

def add(a,b)
	a+b
end

def subtract(a,b)
	a-b
end

def multiply(a,b)
	a*b
end

def divide(a,b)
	a/b
end

def divide_to_find_a_remainder(a,b)
	a%b
end


if function == 'add'
       puts "Aight, hit me with the first number:"
       num1 = gets.chomp.to_i
       puts "Now the second number:"
       num2 = gets.chomp.to_i
       puts "The answer is #{ add(num1, num2) }"
  elsif function == 'subtract'
       puts "Aight, hit me with the first number:"
       num1 = gets.chomp.to_i
       puts "Now the second number:"
       num2 = gets.chomp.to_i
       puts "The answer is #{ subtract(num1, num2) }"
  elsif function == 'multiply'
  	   puts "Aight, hit me with the first number:"
       num1 = gets.chomp.to_i
       puts "Now the second number:"
       num2 = gets.chomp.to_i
       puts "The answer is #{ multiply(num1, num2) }"
  elsif function == 'divide'
  	   puts "Aight, hit me with the first number:"
       num1 = gets.chomp.to_i
       puts "Now the second number:"
       num2 = gets.chomp.to_i
       puts "The answer is #{ divide(num1,num2) }"
  elsif function == 'divide to find a remainder'
  	   puts "Aight, hit me with the first number:"
       num1 = gets.chomp.to_i
       puts "Now the second number:"
       num2 = gets.chomp.to_i
       puts "The answer is #{ divide_to_find_a_remainder(num1,num2) }"
  else 
       puts "you just seem really unintelligent right now because you can't follow instructions. try again, dumbass."
end




