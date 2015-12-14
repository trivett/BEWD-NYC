# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Company.create(name: "yahoo", market_capitalization: 200, city: "Sunnyvale")
Company.create(name: "google", market_capitalization: 300, city: "Mountain View")
Company.create(name: "general assembly", market_capitalization: 402, city: "New York")
Company.create(name: "microsoft", market_capitalization: 420, city: "Seattle")
Company.create(name: "facebook", market_capitalization: 542, city: "Menlo Park")
Company.create(name: "twitter", market_capitalization: 180, city: "San Francisco")
Company.create(name: "adobe", market_capitalization: 381, city: "San Jose")


