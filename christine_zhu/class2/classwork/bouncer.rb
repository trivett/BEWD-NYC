puts "Hi there! Welcome to Union Pool. Can I see some ID?"
age = gets.chomp.to_i

def check_age(years)
	if years > 21
		puts "Well come on in!"
	elsif years == 21
		puts "Looks like you're just the right age. Enjoy!"
	else
		puts "Sorry, not tonight. Maybe when you're older!"
	end
end

check_age(age)