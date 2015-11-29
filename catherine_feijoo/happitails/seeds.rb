module Seeds

	def get_shelter
		shelter = Shelter.new( "Happi Tails" )

		shelter.add_client( Client.new( "Mary", 78 ) )
		shelter.add_client( Client.new( "Bob", 67 ) )
		shelter.add_client( Client.new( "Beth", 56 ) )
		shelter.add_client( Client.new( "Terry", 45 ) )
		shelter.add_client( Client.new( "Anne", 34 ) )
		shelter.add_client( Client.new( "Roger", 23 ) )

		shelter.add_animal( Animal.new( "Princess", "cat" ) )
		shelter.add_animal( Animal.new( "Jelly", "dog" ) )
		shelter.add_animal( Animal.new( "Tweety", "bird" ) )
		shelter.add_animal( Animal.new( "Nibbles", "mouse" ) )
		shelter.add_animal( Animal.new( "Pookie", "dog" ) )
		shelter.add_animal( Animal.new( "Arrow", "bird" ) )
		shelter.add_animal( Animal.new( "Fawkes", "bird" ) )
		shelter.add_animal( Animal.new( "Emily Dickinson", "cat" ) )
		shelter.add_animal( Animal.new( "Doodles", "dog" ) )
		shelter.add_animal( Animal.new( "Prairie", "gerbil" ) )

		return shelter
	end

end