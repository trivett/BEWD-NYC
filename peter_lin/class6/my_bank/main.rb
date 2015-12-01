require_relative 'lib/savings_account'

sa = SavingsAccount.new('Peter', 90210, 400)


sa.deposit(100)
sa.check_balance

sa.withdraw(300)

sa.check_balance
sa.withdraw(150)
sa.check_balance