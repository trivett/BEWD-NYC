class Account
  attr_accessor :account_num, :balance, :password, :user_name

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
