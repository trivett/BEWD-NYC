
#ittarate over a array.
my_array = ["adell","the_beatles","MichaelJackson","metalica","madona"]

my_array.each do |x| # goes through each variable in the array and do the chosen method on it. in our example, to upper case.
puts x.upcase
end


#itarate through a hash:

animals = {"moose"=>"moose","sheep"=>"sheep","dog"=>"dogs","walrus"=>"walri","mouse"=>"mice"}

animals.each do |k,v|
    puts "snimal in single: " +k
    puts "animal in plural:" +v
  end
