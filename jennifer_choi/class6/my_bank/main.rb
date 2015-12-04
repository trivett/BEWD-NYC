require_relative "lib/savings.rb"

sa= SavingsAccount.new("Jennifer", "9177564433", 400)

sa.deposit(100)

puts sa.balance

sa.withdraw(450)

puts sa.balance

acc = [sa]

acc.each do |account|
	puts "Current Balance: #{account.check_balance}"
	puts "After withdrawal #{account.withdraw(100)}"
	puts "After deposit #{account.deposit(300)}"
end
