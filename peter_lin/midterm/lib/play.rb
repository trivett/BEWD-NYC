module Play

  def plays(pet)
    if pet.toys.length == 0
      puts "The pet has no toys"
    else
      pet.show_toys_with_nums()
      print 'Pick a toy to play with (by number): '
      toy_num = gets.chomp.to_i
      puts '-----------------------------'
      if toy_num < 0 || toy_num >= pet.toys.length 
        puts "Invalid toy number. Try again."
      else
        puts "The client is playing with #{ pet.name } and its toy #{ pet.toys[toy_num] }!!!"
      end
    end
  end

  def give_toy(pet, toy)
    pet.toys << toy
  end


end