# very very simple way
puts "Please enter a number of your choice"

num1 = gets.chomp

if num1 == ""
	puts "We did not recieve any digit from you, Please try again"
	exit
elsif num1.is_a? Numeric
	Puts "Please enter a numeric value"
	exit
else 
	puts (num1.to_i % 2==0)?  "You have enterd even number" : "You have enterd odd number"
end

message_1 = <<EOM

-- here another way to find out even or odd --

# next one

EOM

puts message_1 

puts "Please enter another number"

a = gets.chomp

if a == ""
	# if user don't enter any value below message should display
	puts "We did not recieve any digit, please try again"
	exit
elsif a.to_i % 2 == 0 	
	puts 'You have enterd even number'
else
	puts 'You have enterd odd number'
end


# Here is another way we can do it.

# while (a = gets.chomp.to_i) do
# 	if a == ""
# 		exit
# 	else
# 		a = a.to_i
# 		if a % 2 == 0 
# 			puts 'even'
# 		else
# 			puts 'odd'
# 		end
# 	end	
# end