# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a = User.create(name: "Brian", email: "bdflynny@gmail.com")
b = User.create(name: "Manini", email: "manini.gupta@gmail.com")

a.photos.create(url:"http://cdn3-www.cattime.com/assets/uploads/gallery/25-cat-memes/Cat-meme_005.jpg" , caption:"This cat doesn't mess around!", )
a.photos.create(url:"http://memesvault.com/wp-content/uploads/Funny-Cat-Meme-Work-13.jpg" , caption:"This cat is partying too hard!")
b.photos.create(url:"http://memesvault.com/wp-content/uploads/Thanksgiving-Cat-Meme-02.jpg", caption:"And how I'll soon feel after Christmas dinner!")
b.photos.create(url:"http://memesvault.com/wp-content/uploads/Funny-Fat-Cat-Meme-121.jpg", caption: "This can't be real!")
