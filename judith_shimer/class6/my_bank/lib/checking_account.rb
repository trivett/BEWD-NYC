require_relative 'account'

class CheckingAccount < Account
	attr_accessor :min_bal

	def initialize
		@min_bal = 1
		@acct_number = acct_number.to_i
		@balance = balance.to_i
		@username = username
	end
end