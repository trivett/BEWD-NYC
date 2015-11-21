require_relative 'banking'

class Account
	attr_accessor :acct_number, :balance, :username

	include Banking

	def to_s
		"=====\nAccount Number: #{@acct_number}\nBalance: #{@balance}\nUsername: #{@username}"
	end
end