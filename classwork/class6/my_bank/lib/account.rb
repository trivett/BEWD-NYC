class Account
  attr_accessor :owner, :acct_num, :balance


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