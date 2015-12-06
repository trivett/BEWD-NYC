class Account
  attr_accessor :username, :account_number, :balance





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
