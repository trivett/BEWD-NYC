#1
puts "How old are you!?"
age = gets.chomp.to_i

def check_age(i)

    if i == 21
	    puts "Just old enough"

    elsif i < 21
	    puts "toooo young, go home"
    else
	    puts "come on in, have a drink"
    end
end