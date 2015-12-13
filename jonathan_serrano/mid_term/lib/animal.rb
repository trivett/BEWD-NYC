class Animal
	attr_accessor :name, :specices, :toys
	def initialize ( name, specices)
		@name = name	
		@specices = specices 
		@toy = []
	end
	def give_toy( toy )
		@toys << toy
	end
	def to_s
		"#{@name} the #{specices}"
	end
end