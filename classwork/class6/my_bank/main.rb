require_relative 'lib/savings_account'

sa = SavingsAccount.new("vincent", 90210, 400)

sa.deposit(100)

puts sa.balance

sa.withdraw(300)


puts sa.balance

sa.withdraw(150)
puts sa.balance