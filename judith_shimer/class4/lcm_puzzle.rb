test = 0

begin
	test += 20
	div = 20
	div -= 1 while test % div == 0 && div > 1
end while div > 2

puts test