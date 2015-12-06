require_relative 'account'

class Savings_account < Account
    attr_accessor :min_balance, :interest_rate, :monthly_fee

    def initialize(username, account_number, balance)
        @min_balance = 100
        @username = username
        @account_number = account_number
        @balance = balance
        @interest_rate = 0.025
        @monthly_fee = 1
    end

    def withdraw(amount)  
      if (@balance - amount) > @min_balance
          @balance -= amount
      else
        puts "Transaction not possible."
    end
  end
end
