number = 0
until number == 100
	number += 1

	if number%3 == 0
		puts "Fizz"

	elsif number%5 == 0
		puts "Buzz"

	elsif number%15 == 0
		puts "FizzBuzz"

	else
		puts number
	end

end



