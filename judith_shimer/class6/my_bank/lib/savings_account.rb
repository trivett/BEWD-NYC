require_relative 'account'

class SavingsAccount < Account
	attr_accessor :interest_rate, :min_bal, :max_withdrawal

	def initialize
		@interest_rate = 0.025
		@min_bal = 100
		@max_withdrawal = 5
		@acct_number = acct_number.to_i
		@balance = balance.to_i
		@username = username
	end
end