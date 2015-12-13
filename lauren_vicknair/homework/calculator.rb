puts "What do want from me?"
answer = gets.chomp.downcase

if ["add", "subtstract", "multiply", "divide", "remainder"].include?(answer)
	puts "That can be done!"
else
	puts "I cannot do that"
	exit
end

puts "Give me a number"
num1 = gets.chomp.to_f

puts "Give me another number"
num2 = gets.chomp.to_f

if answer == "add"
	puts num1 + num2
end

if answer == "divide"
	puts num1 / num2
end

if answer == "multiply"
	puts num1 * num2
end

if answer == "subtstract"
	puts num1 - num2
end

if answer == "remainder"
	puts num1 % num2
end
