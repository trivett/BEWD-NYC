puts "how old are u?"
age = gets.chomp.to_i

def check_age(user_age)
  if user_age<=20
    puts "plz leave"
  elsif user_age==21
  	puts "ok i guess u can come in"
  else
  	puts "ofc u can come in"
  end
end

check_age(age)