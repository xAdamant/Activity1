$currentBalance = 0
def tryAgain()
	print 'Another transaction?(y/n):'
	r = gets.chomp
	if r = 'y' || 'Y'
		mainMenu
	elsif condition
	 	 r = 'x' || 'X'
		puts 'Thank you! Good Bye!'
		exit
		exit
	else
		puts 'Invalid Input'
		tryAgain
	end
end
def DisplayAB(thisbal)
	bal = thisbal
	print "Your current balance is $" 
	puts bal
	tryAgain 
end
def Deposit(thisbal)
	bal = thisbal
	print "Deposit ammount: "
	deposit = gets.to_i
	bal = bal + deposit
	print 'Current Balance: '
	$currentBalance = bal
	puts bal
	tryAgain
end
def Withdraw(thisbal)
	bal = thisbal
	print 'Withdraw ammount: '
	withdraw = gets.to_i
	if withdraw < bal
		bal = bal - withdraw
	else
		puts 'You cannot withdraw!'
	end
	print 'Current Balance: '
	$currentBalance = bal
	puts bal
	tryAgain
end
def choices(x)
	if x == '1'
		DisplayAB $currentBalance
	elsif x == '2'
		Deposit $currentBalance
	elsif x == '3' 
		Withdraw $currentBalance
	else
		puts 'Invalid Input'
	end
end
def mainMenu()
puts 'Hi! Welcome to MITS06 Ruby Banking'
puts 'What would you like to do?'
puts '[1] - Display Account Balance'
puts '[2] - Deposit Amount'
puts '[3] - Withdraw Amout'
print 'select: '
x = gets.chomp
print 'You have selected: '
puts x
choices x
end
mainMenu
