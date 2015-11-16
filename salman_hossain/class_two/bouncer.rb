puts "This is your computer, pleaes let me know your age, I like to know you"
age = gets.chomp


def checkage (age) 

	if age == "" 
		puts "we did not recieved any digit from you, please try again."
		exit # this will exit out when there is no input from users.
	elsif (age.to_i >= 5) && (age.to_i <=6)
		
		display_message = <<Eom
		--- You should be in kindergard--

			here is lesson
		- A - for Apple, B - for Ball, C - for cat
		-- Good job young warrior!!! you killing it----
Eom
		puts display_message
	elsif (age.to_i >=7) && (age.to_i <=13)
		puts "you should be in middle school"
	elsif (age.to_i >=14) && (age.to_i <=17)
		puts "you should in high school"
	elsif (age.to_i >=18) && (age.to_i <=24)

		if (age.to_i ==21)
			print "Do you want some drink, well come on in" 
		else
			display_msg = <<EOM 

		- You should be in college
		- Make sure to have partime job
EOM
		puts display_msg
		end
	elsif (age.to_i >=25) && (age.to_i <=40)
		puts "You should have a real job"
	elsif (age.to_i >=41) && (age.to_i <= 50)
		puts "Are you still working, save money! save money!!"
		puts "You should be married and have lots of kids or not"
	elsif (age.to_i >=51) && (age.to_i <=65)
		puts "Are you still working, did you save money for your retirement"
	elsif (age.to_i >=65) && (age.to_i <=85)
		puts "Are you enjoying your retirement"
		puts "play with your grand kids"
	elsif (age.to_i >=86) && (age.to_i <=99)
		puts " Just relax and enjoy your time and think back what you have done"
	else
		puts "stay home, don't go out, its dark out there"
	end
end



checkage age # I am calling the function 
	