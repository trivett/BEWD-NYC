# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
u = User.create(name: "vincent", email: "trivett@gmail.com")

u.photos.create(url: "https://i.imgur.com/4qJAcSz.gif", caption: "some gif of people")
u.photos.create(url: "https://i.imgur.com/Ld1aD7z.gif", caption: "more people")



