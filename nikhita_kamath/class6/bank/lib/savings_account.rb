require_relative 'account'

class SavingsAccount < Account
  attr_accessor :interest_rate, :monthly_fee, :min_balance

def initialize(acct_number, balance, owner)
  @interest_rate = 0.025
  @monthly_fee = 1
  @min_balance = 100
  @acct_number = acct_number
  @balance = balance
  @owner = owner
end

def withdraw(amount)
  if @balance - amount < @min_balance
    puts "Transaction not possible. Get a job."
  else
    @balance -= amount
  end
end

end