puts "what is your age?"

age = gets.chomp.to_i

def check_age(age)
    if age == 21
        puts "just old enough"
    elsif age < 21
        puts "toooooo young. get outta here."
    else
        puts "come on in"
    end
end

check_age(age)
