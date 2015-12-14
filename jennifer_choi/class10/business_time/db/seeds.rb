# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'seeding'

Company.create(name: "yahoo", market_capitalization: 42, city: "New York", profit:500)
Company.create(name: "greenhouse", market_capitalization: 2, city: "New York", profit:400)
Company.create(name: "kitchen surfing", market_capitalization: 8, city: "Silicon Valley", profit:700)
Company.create(name: "genius", market_capitalization: 10, city: "Portland", profit:800)
Company.create(name: "2u", market_capitalization: 5, city: "Austin", profit:100)

puts "Successfully created #{Company.all.count}"