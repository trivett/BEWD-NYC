class Account
attr_accessor :user_name, :account_num, :pin

	def deposit (amount)
		@balance += amount
	end
	def withdraw
		@balance -= amount
	end
	def check_balance
		puts @balance
	end

end