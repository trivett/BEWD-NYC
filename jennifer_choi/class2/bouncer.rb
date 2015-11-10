puts "What is your age?"

check_age = gets.chomp.to_i

if check_age == 21
	puts "just old enough"
elsif check_age < 21
	puts "toooo young, get outta here"
else
	puts "come on in, have a drink"
end