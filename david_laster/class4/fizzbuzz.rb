start = 0
def fizzBuzz(input)
	if input % 3 == 0 && input % 5 == 0
		puts "FizzBuzz"
	elsif input % 5 == 0
		puts "Buzz"
	elsif input % 3 == 0
		puts "Fizz"	
	else
		puts input
	end
end

while start < 101
	fizzBuzz(start)
	start += 1
end