require_relative 'account'

class SavingsAccount < Account

	attr_accessor :interest_rate, :interest_accrued, :monthly_fee, :min_balance

	def initialize(owner, acct_number, balance) 
		@interest_rate = 0.025
		@min_balance = 100
		@owner = owner
		@acct_number = acct_number #uninitialized
		@balance = balance
		@monthly_fee = 1

	end

def withdraw(amount)
	if @balance - amount < @min_balance 
		puts "Transaction not possible!"
	else
		@balance -= amount
	end
end



end