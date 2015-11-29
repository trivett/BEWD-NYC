class Account
  attr_accessor :acct_number, :owner, :balance, :acct_pin, :acct_password, :acct_username

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def checkbalance
    puts @balance
  end

end