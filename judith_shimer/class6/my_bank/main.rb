require_relative 'lib/savings_account'

a = SavingsAccount.new(116783,6749,"judithshimer")

puts "What would you like to do? (deposit, withdraw, check balance)"
action = gets.chomp

if action == "deposit"
	a.deposit
elsif action == "withdraw"
	a.withdraw
else
	a.check_balance
end