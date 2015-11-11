puts "how old are you?"
age = gets.chomp.to_i

	if age < 21
		puts "NO WAY!"
	elsif age == 21
		puts "Fine, but just barely."
	else age >= 21
		puts "Step right in!"
end	


