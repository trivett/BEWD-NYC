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
  },
  {
    title: "The Good, the Bad and the Ugly",
    description: "Cowboys will be cowboys",
    year_released: 1966
  },
  {
    title: "12 Angry Men",
    description: "Really old movie about a court case. They have anger issues",
    year_released: 1957
  },
  {
    title: "The Dark Knight",
    description: "Batman (not a super hero), battles the joker for who can have the most not normal voice ever",
    year_released: 2008
  },
  {
    title: "The Lord of the Rings: The Return of the King",
    description: "The story of one man's struggle to overcome alcoholism",
    year_released: 2003
  },
  {
    title: "Fight Club",
    description: "This is your life... Apparently it's really easy to make explosives",
    year_released: 1999
  },
  {
    title: "Star Trek Into Darkness",
    description: "Cumberbatch as Khan. <3<3<3",
    year_released: 2013
  },
  {
    title: "The Lord of the Rings: The Fellowship of the Ring",
    description: "More Hobbitses",
    year_released: 2001
  },
  {
    title: "Inception",
    description: "Dream in a dream, in a nap, in a dozing off in class and a lot of skinny ties",
    year_released: 2010
  },
  {
    title: "Goodfellas",
    description: "None of these fellas are even close to good.",
    year_released: 1990
  },
  {
    title: "Star Wars",
    description: "Let the Wookie win",
    year_released: 1977
  },
  {
    title: "Seven Samurai",
    description: "A profound meditation on the nature of the state. Seriously, watch this.",
    year_released: 1954
  },
  {
    title: "Forrest Gump",
    description: "Life is like a box of chocolates. You don't know precisely what you are about to get, but I mean, you have a pretty clear general idea, and things are generally the same always. It's not like you pick out a chocolate and it turns out to be a lizard or something. Likewise, I had no illusions that I wouldn't wake up, go to work, and eat lunch today. Didn't know what I was going to eat for lunch! How surprising, right? Something something Sartre Debord Marx. I saw this when I was like 9 and thought it was daft.",
    year_released: 1994
  },
  {
    title: "The Matrix",
    description: "Not even The Matrix Reloaded could ruin this movie.",
    year_released: 1999
  },
  {
    title: "The Lord of the Rings: The Two Towers",
    description: "Again with the Hobbits and their jewelry obsession",
    year_released: 2002
  }]