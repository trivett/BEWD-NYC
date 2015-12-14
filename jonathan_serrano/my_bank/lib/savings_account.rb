require_relative 'lib/account'

class SavingsAccount < Account
attr_accessor :min_balance, :interest_rate, :monthly_fee

	def initialize (owner, acct_num, balance)
		@min_balance = 100
		@owner = owner
		@acct_num = acct_num
		@balance = balance
		@interest_rate = 0.025
		@monthly_fee = 1
	end
	def withdraw(amount)
		if @balance - amount < @min_balance
				puts "you have reach your limit"
		else 
			@balance -= amount 	
		end
	end
end
