# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Company.create(name: "yahoo", city: "sunnyville", market_capitalization: 500, profit_margin: 1)
Company.create(name: "greenhouse", city: "NYC", market_capitalization: 1000, profit_margin: 2)
Company.create(name: "kitchen surfing", city: "NYC", market_capitalization: 80, profit_margin: 4)
Company.create(name: "genius", city: "brooklyn", market_capitalization: 3, profit_margin: 7)
Company.create(name: "u2", city: "DC", market_capitalization: 5, profit_margin: 1)
