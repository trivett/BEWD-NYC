#num = 1
#while num <= 100
#	if num % 15 == 0
#		puts "FizzBuzz"
#		num += 1
#	elsif num % 3 == 0
#		puts "Fizz"
#		num += 1
#	elsif num % 5 == 0
#		puts "Buzz"
#		num += 1
#	else
#		puts num
#		num += 1
#	end
#end

1.upto(100) do |num|
	if num % 15 == 0
		puts "FizzBuzz"
	elsif num % 3 == 0
		puts "Fizz"
	elsif num % 5 == 0
		puts "Buzz"
	else
		puts num
	end
	num += 1
end