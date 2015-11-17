puts "Aight, hit me with the first number:"
num1 = gets.chomp.to_i

puts "Now the second number:"
num2 = gets.chomp.to_i

puts fulfill_math_function(function,num1,num2)



puts ask_for_input
function = gets.chomp

puts "Aight, hit me with the first number:"
num1 = gets.chomp.to_i

puts "Now the second number:"
num2 = gets.chomp.to_i


def fulfill_math_function(a,b,c)
    
    if a == 'add'
	  b + c
    elsif a == 'subtract'
	  b - c
	elsif a == 'multiply'
	  b * c
    elsif a == 'divide'
	  b / c
	elsif a == 'divide to find a remainder'
	  b % c
	else
	  puts 'people do not get rewarded for not following instructions. try again, funny guy.'
	end
end

puts fulfill_math_function(function,num1,num2)