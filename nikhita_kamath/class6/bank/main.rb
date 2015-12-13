require_relative 'lib/savings_account'

big_savings = SavingsAccount.new(464092,200000,"T-Pain")

big_savings.withdraw(200)
puts big_savings.balance
big_savings.withdraw(300)
puts big_savings.balance
big_savings.withdraw(1500000)



