require_relative 'account'

class SavingsAccount < Account
  attr_accessor :min_balance, :interest_rate, :monthly_fee 

  def initialize(owner, acct_num, balance)
    @min_balance = 100
    @owner = owner
    @acct_num = acct_num
    @balance = balance
    @interest_rate = 0.025
    @month_fee = 1
  end

   def withdraw(amount)
    if @balance - amount >= min_balance
      @balance -= amount
    else
      puts 'Withdraw failed. You need to maintain the min balance'
    end
  end

end