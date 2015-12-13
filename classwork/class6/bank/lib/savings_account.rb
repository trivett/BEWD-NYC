require_relative 'account'

class SavingsAccount < Account
  attr_accessor :min_balance

    def initialize(balance, owner, min_balance)
      @balance = balance
      @owner = owner
      @min_balance = min_balance
    end

  def withdraw(amount)
    if @balance - amount > @min_balance
      @balance -= amount
    else
      puts "insufficient cash"
    end
  end
end
