require_relative "lib/savings_account"

account1 = SavingsAccount.new("Brian", "12345", "400")
account2 = SavingsAccount.new("Manini", "54321", "700")
account3 = SavingsAccount.new("George", "23123", "300")

accounts = [account1, account2, account3]

account1.deposit(100)

puts account1.check_balance


