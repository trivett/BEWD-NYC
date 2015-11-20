class Account
  attr_accessor :balance, :owner

  def initialize(balance, owner)
    @balance = balance
    @owner = owner
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end
