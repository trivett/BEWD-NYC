puts "How old are you?"
age = gets.chomp.to_i

def age_check (age)

  if age > 21
      puts "Come on in and enjoy some beverage alcohol, fellow legal adult!"
    elsif age == 21
      puts "You just made it, you lucky duck. Welcome to the exciting world of beverage alcohol!"
    elsif age < 21
      puts "Get the fudge out of here. You're not ready to enjoy beverage alcohol."
  end
end

puts age_check(age)
