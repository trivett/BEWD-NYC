puts "what's your age, bro?"

age = gets.chomp.to_i

def check_age(a)
    if a == 21 
	  puts "aight, baby boy, you barely made it. don't get crazy."
    elsif a < 21
	  puts "you tryna get us shut down? scram, fool. that's right, git!"
    else a > 21
	  puts "you still a partier huh? have fun." 
	end
end

puts check_age(age)