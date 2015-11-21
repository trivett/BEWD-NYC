require_relative 'lib/savings_account'
require_relative 'lib/checking_account'

c = CheckingAccount.new
s = SavingsAccount.new

def open_account(c,s)
	puts "Welcome to Bank of Jude!  Please enter a username."
	c.username = gets.chomp
	s.username = c.username
	puts "Let's create your checking account.  Please enter a 5-digit account number."
	c.acct_number = gets.chomp.to_i
	puts "Now enter the amount of your initial deposit."
	c.balance = gets.chomp.to_i
	puts "Please enter a 5-digit account number for your savings account."
	s.acct_number = gets.chomp.to_i
	puts "Now enter the amount of your initial savings deposit."
	s.balance = gets.chomp.to_i
	puts c
	puts s
end

def banking(action,acct)
	if action == "deposit"
		acct.deposit
	elsif action == "withdraw"
		acct.withdraw
	else
		acct.check_balance
	end
end

def choose(c,s)
	action = "start"
	puts "What would you like to do? (deposit, withdraw, check balance, exit)"
	action = gets.chomp
	while action != "exit"
		puts "Checking or Savings? (c/s)"
		acct = gets.chomp.upcase
		if acct == "C"
			banking(action,c)
		else
			banking(action,s)
		end
		puts "Would you like another transaction? (deposit, withdraw, check balance, exit)"
		action = gets.chomp
	end
end

open_account(c,s)
choose(c,s)