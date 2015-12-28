require_relative "account"

class SavingsAccount < Account
  attr_accessor :interest_rate, :min_bal, :monthly_fee
  def initialize(user_name, account_num, balance)
    @user_name = user_name
    @account_num = account_num
    @balance = balance.to_i
    @min_bal = 100
    @interest_rate = 0.025
    @monthly_fee = 1
  end

  def to_s
    "#{user_name}'s savings account currently has $#{balance}."
  end

  def withdraw(amount)
    if @balance - amount < @min_bal
      puts "no way jose"
    else
      @balance -= amount
    end
  end



end


