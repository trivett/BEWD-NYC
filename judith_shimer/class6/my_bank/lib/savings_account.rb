require_relative 'account'

class SavingsAccount < Account
	attr_accessor :interest_rate, :min_bal, :max_withdrawal
	def initialize(acct_number,balance,username)
		@interest_rate = 0.025
		@min_bal = 100
		@max_withdrawal = 5
		@acct_number = acct_number.to_i
		@balance = balance.to_i
		@username = username
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