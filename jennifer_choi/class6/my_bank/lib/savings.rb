require_relative "account.rb"

class SavingsAccount < Account
	attr_accessor :min_balance, :interest_rate, :monthly_fee

	def initialize (owner, acct_num, balance)
		@min_balance = 100
		@owner = owner
		@acct_num = acct_num
		@balance = balance
		@interest_rate = 0.025
		@monthly_fee = 100
		#numbers input are uninitialized constants that don't need to be defined
	end

	def to_s
		puts "#{@owner}'s account number #{@acct_num} has $#{@balance}"
	end
end