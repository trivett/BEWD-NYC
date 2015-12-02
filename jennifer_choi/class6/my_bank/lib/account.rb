class Account
	attr_accessor :owner, :acct_num, :balance

	def deposit(amount)
		@balance += amount
	end

	def withdraw(amount)
		if @balance - amount < @min_balance
			puts "Transaction not possible. Get a job."
		else
			@balance -= amount
		end
	end

	def check_balance
		puts @balance
	end
end