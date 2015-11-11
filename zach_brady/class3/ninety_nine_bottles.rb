# 99.downto(1) do |num|
#     puts "#{num} bottles of beer on the wall, #{num} bottles of beer, \n you take one down, pass it around, #{ num - 1 } bottles of beer on the wall"
# end

numBottles = 99

# until numBottles == 0
#     puts "#{numBottles} bottles of beer on the wall, #{numBottles} bottles of beer, \n you take one down, pass it around, #{numBottles - 1} bottles of beer on the wall"
#     numBottles -= 1
# end

while numBottles >= 0
    puts "#{numBottles} bottles of beer on the wall, #{numBottles} bottles of beer, \n you take one down, pass it around, #{numBottles - 1} bottles of beer on the wall"
    numBottles -= 1
end
