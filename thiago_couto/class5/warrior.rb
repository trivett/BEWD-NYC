class Warrior
	attr_accessor :name, :clan, :strength, :dexterity

	def initialize(name, race, strength, dexterity)
		@name = name
		@clan = clan
		@strength = strength
		@dexterity = dexterity
	end

	def about
		puts "#{@name} is a Warrior from the #{@clan} clan. Strength: #{@strength} Dexterity: #{@dexterity}"
	end

	def clan_change(new_clan)
  		puts "Changing clan to #{new_clan}"
  		@clan = new_clan
	end
end

warrior = Warrior.new("Jake", "Red Clan", 3, 4)

puts warrior

warrior.clan_change("Blue Clan")

puts warrior