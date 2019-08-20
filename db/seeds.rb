# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "starting seed"

Review.destroy_all
Feature.destroy_all
FacilityCategory.destroy_all
Facility.destroy_all
User.destroy_all
City.destroy_all

user1 = User.create!(email: "user1@a.a", password: "password")
user2 = User.create!(email: "user2@a.a", password: "password")


london = City.create(name:"London", country:"United Kingdom")
paris = City.create(name:"Paris", country:"France")
madrid = City.create(name:"Madrid", country:"Spain")


#Categories DO NOT DESTROY THIS
restaurant = FacilityCategory.create(name:"Restaurant")
playground = FacilityCategory.create(name:"Playground")
activity = FacilityCategory.create(name:"Activity")
wc = FacilityCategory.create(name:"Restroom")

#Features DO NOT DESTROY THIS
high_chair = Feature.create(name:"High chairs", facility_category: restaurant)
pram = Feature.create(name:"Accessible with pram", facility_category: restaurant)
kids_menu = Feature.create(name:"Kid’s menu", facility_category: restaurant)
healthy = Feature.create(name:"Healthy options", facility_category: restaurant)
buffet = Feature.create(name:"Buffet", facility_category: restaurant)
fast = Feature.create(name:"Fast service", facility_category: restaurant)
quality_price = Feature.create(name:"Good quality for price", facility_category: restaurant)
corner = Feature.create(name:"Kids’ corner", facility_category: restaurant)
good_toilets = Feature.create(name:"Good toilets", facility_category: restaurant)
changing_room = Feature.create(name:"Baby changing room", facility_category: restaurant)
changing_table = Feature.create(name:"Changing table", facility_category: restaurant)
age_1 = Feature.create(name:"Suitable for 1-4 years", facility_category: playground)
age_2 = Feature.create(name:"Suitable for 5-8 years", facility_category: playground)
age_3 = Feature.create(name:"Suitable for 9-12 years", facility_category: playground)
wc_close = Feature.create(name:"Toilets nearby", facility_category: playground)
water_games = Feature.create(name:"Water games", facility_category: playground)
enclosed = Feature.create(name:"Enclosed", facility_category: playground)
nature = Feature.create(name:"Near nature", facility_category: playground)
football = Feature.create(name:"Football field", facility_category: playground)
basket = Feature.create(name:"Basketball field", facility_category: playground)
pingpong = Feature.create(name:"Pingpong tables", facility_category: playground)
potty = Feature.create(name:"Potty available", facility_category: wc)
diapers = Feature.create(name:"Diapers available", facility_category: wc)
changing_room = Feature.create(name:"Baby changing room", facility_category: wc)
changing_table = Feature.create(name:"Changing table", facility_category: wc)
pram = Feature.create(name:"Accessible with pram", facility_category: wc)
kid_activities = Feature.create(name:"Organised activities for kids", facility_category: activity)
interactive = Feature.create(name:"Interactive exhibit for kids", facility_category: activity)
age_1 = Feature.create(name:"Suitable for 1-4 years", facility_category: activity)
age_2 = Feature.create(name:"Suitable for 5-8 years", facility_category: activity)
age_3 = Feature.create(name:"Suitable for 9-12 years", facility_category: activity)
pram = Feature.create(name:"Accessible with pram", facility_category: activity)
resto = Feature.create(name:"Restaurant on-site", facility_category: activity)
good_toilets = Feature.create(name:"Good toilets", facility_category: activity)


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
