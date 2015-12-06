require_relative 'lib/savings_account'
#no need to requier Account since it tricles down through savings account.

sav_acc = Savings_account.new("ayal", 90210, 400)

puts sav_acc.balance

sav_acc.withdraw(200)

puts sav_acc.balance

sav_acc.withdraw(150)

puts sav_acc.balance
