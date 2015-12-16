# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Adding a Whole bunch of movies"
Movie.create [
  {
    title: "The Shawshank Redemption",
    description: "Morgan Freeman in Jail",
    year_released: 1994
  },
  {
    title: "The Godfather",
    description: "Hard core Gangster activity",
    year_released: 1972
  },
  {
    title: "The Godfather: Part II",
    description: "More Gangsters, aw yea",
    year_released: 1974
  },
  {
    title: "Pulp Fiction",
    description: "Samuel Jackson screams a LOT! Say What again!",
    year_released: 1994
  }
  
  ]
