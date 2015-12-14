# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Product.create(name: "Furminator", price: 30)
Product.create(name: "Cat Rain Coat", price: 45)
Product.create(name: "Pet Tote Bag", price: 65)
puts "done seeding!"
