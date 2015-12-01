class Account
  attr_accessor :owner, :acct_num, :balance, :pin

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