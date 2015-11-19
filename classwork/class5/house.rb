class House
  attr_accessor :color, :stories, :rooms

  def initialize(stories, rooms, color)
    @stories = stories
    @rooms = rooms
    @color = color
  end

  def to_s
    "This #{@color} house has #{@stories.to_s} stories and #{ @rooms.to_s } rooms."
  end 

  def paint(new_color)
    puts "painting the house #{ new_color }"
    @color = new_color
  end
end

myhouse = House.new(2, 3, 'red')

puts myhouse

myhouse.paint("blue")

puts myhouse