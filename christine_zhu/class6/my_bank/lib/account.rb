class Account
	attr_accessor :acct_number, :balance, :user_name, :pin

	def to_s
		"You currently have #{@balance}."
	end

	def deposit(amount)
		@balance += amount
	end

	def withdraw(amount)
		@balance -= amount
	end

	def check_balance
		puts @balance
	end

end