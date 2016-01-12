# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts "Seeding happitails!"

s = Shelter.create(name: "Happitails")

s.clients.create([
  {name: "Vincent", age: 31, photo: "https://c1.staticflickr.com/3/2426/3878182288_e17b5fc7db_b.jpg"},
  {name: "Alice", age: 25, photo: "http://www.disneyclips.com/imagesnewb/imageslwrakr01/alice.gif"},
  {name: "Bob", age: 41, photo: "http://a2.files.biography.com/image/upload/c_fit,cs_srgb,dpr_1.0,h_1200,q_80,w_1200/MTIwNjA4NjMzOTU5NTgxMTk2.jpg"},
  {name: "Carlos", age: 37, photo: "http://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/1703.png&w=350&h=254"},
  {name: "Dave", age: 31, photo: "https://bloomington.in.gov/media/media/image/jpeg/4241.jpg"},
  {name: "Eve", age: 29, photo: "http://media.philly.com/images/012413-Eve-Rapper-600.jpg"}

  ])

puts "adding some animals to the shelter"

s.animals.create([
  {name: "Tard", species: "cat", photo: "https://pbs.twimg.com/profile_images/616542814319415296/McCTpH_E.jpg"},
  {name: "Peach", species: "cat", photo: "http://www.our-happy-cat.com/images/cat-drinking-from-tap.jpg"},
  {name: "Nico", species: "cat", photo: "https://www.aspcapetinsurance.com/media/1033/32.jpg"},
  {name: "Freidrich", species: "cat", photo: "https://pbs.twimg.com/profile_images/3038657495/3d2f325c92060a35e7ac8c697c57d8d4_400x400.jpeg"},
  {name: "Boss", species: "dog", photo: "http://r.ddmcdn.com/s_f/o_1/cx_99/cy_0/cw_400/ch_400/w_400/APL/uploads/2014/07/qa1-do-animals-commit-suicide-600x400.jpg"},
  {name: "Kobo", species: "dog", photo: "https://pbs.twimg.com/profile_images/378800000813538472/e96f73ec3d37b1531a359d217a8b0f38_400x400.jpeg"},
  {name: "Gloria", species: "dog", photo: "http://dogsowngroomingsalon.com/media/Wet-Dog.png"},
  {name: "Poco", species: "turtle", photo: "https://pbs.twimg.com/profile_images/2190301503/tortuga-de-agua_400x400.jpg"}
  ])

puts "giving some clients some animals that they may or may not keep."


Client.first.animals.create([
  {name: "Frances", species: "cat", photo: "https://i.imgur.com/huDXgA3.jpg"}
])
puts "yes that's me and my cat."

Client.second.animals.create([
  {name: "Lady", species: "dog", photo: "https://s-media-cache-ak0.pinimg.com/736x/78/2a/76/782a764ed2f08549286be13c4e7a69fb.jpg"}
])
Client.third.animals.create([
  {name: "Sarge", species: "dog", photo: "http://img.webme.com/pic/s/shiba-inu-steinbachtal/kopievonakira109.jpg"}
])
Client.third.animals.create([
  {name: "Luke", species: "dog", photo: "https://41.media.tumblr.com/9b0c5d3c4ea0bdcc1ea19b5491be956c/tumblr_nht5sboc0i1tf293do1_400.jpg"}
])

Client.fourth.animals.create([
  {name: "Piki", species: "cat", photo: "https://pbs.twimg.com/profile_images/107085880/Sidebox-Kitten-Thinks-R_400x400.jpg"}
])

