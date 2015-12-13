require_relative 'lib/savings_acct'

savings1 = SavingsAccount.new("Bob", 123456, 10000)


savings1.deposit(500)
puts savings1.balance

savings1.withdraw(100)
puts savings1.balance

savings1.withdraw(300)
puts savings1.balance

