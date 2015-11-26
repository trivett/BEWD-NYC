start = 100
while start > 0
	puts "#{start} bottles of beer on the wall, #{start} bottles of beer. Take one down, pass it around, #{start-1} bottles of beer on the wall."
	start -= 1
end

puts "\n\n ONE MORE TIME!!!!"
start = 100

until start == 0
	puts "#{start} bottles of beer on the wall, #{start} bottles of beer. Take one down, pass it around, #{start-1} bottles of beer on the wall."
	start -= 1
end