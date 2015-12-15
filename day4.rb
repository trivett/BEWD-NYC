

count = 1 

while count < 101
	if count %  15 == 0
		puts "fizzbuzz"
	elsif count % 5 == 0
		puts "buzz"
	elsif count % 3 == 0
		puts "fizz"
	else	
	puts count 	
	end
	count +=1
end
