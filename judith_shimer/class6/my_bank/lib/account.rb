class Account
	attr_accessor :acct_number, :balance, :username

	def deposit
		puts "Enter a deposit amount:"
		amt = gets.chomp.to_i
		@balance += amt
		puts "New balance: #{@balance}"
	end

	def to_s
		"Account Number: #{@acct_number}\nBalance: #{@balance}\nUsername: #{@username}"
	end

	def check_balance
		puts @balance
	end
end