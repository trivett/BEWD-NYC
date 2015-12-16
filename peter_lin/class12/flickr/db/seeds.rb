# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


u = User.create(name: "Peter", email: "peter@gmail.com")

u.photos.create(url: "https://media.giphy.com/media/d2YZg3m63zNgWa6k/giphy.gif", caption: "some battle")
u.photos.create(url: "https://media.giphy.com/media/d2Zl95JqcOI7fdbG/giphy.gif", caption: "south park")


# Photo.create(url: "https://media.giphy.com/media/d2YZg3m63zNgWa6k/giphy.gif", caption: "some battle")
# Photo.create(url: "https://media.giphy.com/media/d2Zl95JqcOI7fdbG/giphy.gif", caption: "south park")



