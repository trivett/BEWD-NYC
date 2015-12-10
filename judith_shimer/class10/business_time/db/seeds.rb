# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Company.create(name: 'Patron Technology', city: 'New York', market_capitalization: '4586839')
Company.create(name: 'Mylo Solutions', city: 'unknown', market_capitalization: '59702')
Company.create(name: 'Buzzfeed', city: 'Los Angeles', market_capitalization: '3967698')
Company.create(name: 'Amazon.com', city: 'Seattle', market_capitalization: '100000000')