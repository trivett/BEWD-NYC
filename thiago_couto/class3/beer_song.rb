=begin
Conditional Loops
"Bottles on the Wall"
=end

# 100.downto(1) do |num| 
# 	puts "#{num} bottles of beer on the wall, #{num} bottles of beer.  Take one down, pass it arround -- #{num-1} bottles of beer on the wall!"
# end

# bottle = 100
# until bottle < 1
# 	puts "#{bottle} bottles of beer on the wall, #{bottle} bottles of beer. Take one down, pass it arround -- #{bottle-1} bottles of beer on the wall!"
# 	bottle -= 1
# end

bottle = 100
while bottle > 0
	puts "#{bottle} bottles of beer on the wall, #{bottle} bottles of beer. Take one down, pass it arround -- #{bottle-1} bottles of beer on the wall!"
	bottle -= 1
end