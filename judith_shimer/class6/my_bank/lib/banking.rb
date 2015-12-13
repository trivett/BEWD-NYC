module Banking
	def check_balance
		puts @balance
	end

	def deposit
		puts "Enter a deposit amount:"
		amt = gets.chomp.to_i
		@balance += amt
		puts "New balance: #{@balance}"
	end

	def withdraw
		puts "Enter a withdrawal amount:"
		amt = gets.chomp.to_i
		@balance -= amt
		if @balance < @min_bal
			@balance -= 10
			puts "Your balance is below the minimum! We have charged a $10 fee.  Your new balance is #{@balance}"
		else
			puts "New balance: #{@balance}"
		end
	end
end