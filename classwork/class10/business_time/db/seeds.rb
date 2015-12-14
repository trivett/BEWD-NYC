# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts 'seeding'

Company.create(name: "yahoo", market_cap: 42, city: "sunnyvale")
Company.create(name: "greenhouse", market_cap: 2, city: "NYC")
Company.create(name: "kitchen surfing", market_cap: 2252, city: "NYC")
Company.create(name: "genius", market_cap: 32452, city: "brooklyn")
Company.create(name: "2u", market_cap: 1500, city: "DC")


puts "successfully created #{Company.all.count} Companies"