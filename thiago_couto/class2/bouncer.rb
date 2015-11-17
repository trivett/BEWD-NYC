puts "What's your age?"
age = gets.chomp.to_i

def check_age(a)
	if a >= 21
		puts "Come on in!"
	else
		puts "Sorry, can't get in."
	end
end

check_age(age)