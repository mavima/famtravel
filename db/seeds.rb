# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "starting seed"

Review.destroy_all
Facility.destroy_all
User.destroy_all
City.destroy_all

user1 = User.create!(email: "user1@a.a", password: "password")
user2 = User.create!(email: "user2@a.a", password: "password")


london = City.create(name:"London")
paris = City.create(name:"Paris")
madrid = City.create(name:"Madrid")

restaurant = FacilityCategory.create(name:"Restaurant")
playground = FacilityCategory.create(name:"Playground")
activity = FacilityCategory.create(name:"Activity")
wc = FacilityCategory.create(name:"Restroom")


Facility.create!(
  name: "Resto Kiddy",
  user: user2,
  facility_category: restaurant,
  address: "Hyde Park",
  city: london,
  website_link: "www.restokiddy.co.uk",
  )

Facility.create!(
  name: "Resto Doudou",
  user: user2,
  facility_category: restaurant,
  address: "Rue Rodin",
  city: paris,
  website_link: "www.restodoudou.fr",
  )

Facility.create!(
  name: "Parc Tintin",
  user: user2,
  facility_category: playground,
  address: "Rue Rodin",
  city: paris,
  )

Facility.create!(
  name: "WC publique Louvre",
  user: user2,
  facility_category: wc,
  address: "Rue Moulin",
  city: paris,
  website_link: "www.lelouvre.fr",
  )

Facility.create!(
  name: "London Dungeons",
  user: user1,
  facility_category: activity,
  address: "Baker Street 3",
  city: london,
  website_link: "www.dungeons.co.uk",
  )

Facility.create!(
  name: "Bungee jumping loco loco",
  user: user1,
  facility_category: activity,
  address: "Plaza Mayor",
  city: madrid,
  website_link: "www.locoloco.es",
  )


puts "seeding done"
