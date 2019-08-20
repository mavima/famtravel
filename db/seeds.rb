# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "starting seed"

Review.destroy_all
FeatureCategory.destroy_all
Feature.destroy_all
Category.destroy_all
Facility.destroy_all
User.destroy_all
City.destroy_all
Category.destroy_all

user1 = User.create!(email: "user1@a.a", password: "password")
user2 = User.create!(email: "user2@a.a", password: "password")


london = City.create!(name:"London", country:"United Kingdom")
paris = City.create!(name:"Paris", country:"France")
madrid = City.create!(name:"Madrid", country:"Spain")


#Categories DO NOT DESTROY THIS
restaurant = Category.create!(name:"Restaurant")
playground = Category.create!(name:"Playground")
activity = Category.create!(name:"Activity")
wc = Category.create!(name:"Restroom")

#Features DO NOT DESTROY THIS
high_chair = Feature.create!(name:"High chairs")

high_chair_restaurant = FeatureCategory.create!(category: restaurant, feature: high_chair)
# resto_pram = Feature.create!(name:"Accessible with pram", category: restaurant)
# kids_menu = Feature.create!(name:"Kid’s menu", category: restaurant)
# healthy = Feature.create!(name:"Healthy options", category: restaurant)
# buffet = Feature.create!(name:"Buffet", category: restaurant)
# fast = Feature.create!(name:"Fast service", category: restaurant)
# quality_price = Feature.create!(name:"Good quality for price", category: restaurant)
# corner = Feature.create!(name:"Kids’ corner", category: restaurant)
# good_toilets = Feature.create!(name:"Good toilets", category: restaurant)
# resto_changing_room = Feature.create!(name:"Baby changing room", category: restaurant)
# resto_changing_table = Feature.create!(name:"Changing table", category: restaurant)
# age_1 = Feature.create!(name:"Suitable for 1-4 years", category: playground)
# age_2 = Feature.create!(name:"Suitable for 5-8 years", category: playground)
# age_3 = Feature.create!(name:"Suitable for 9-12 years", category: playground)
# wc_close = Feature.create!(name:"Toilets nearby", category: playground)
# water_games = Feature.create!(name:"Water games", category: playground)
# enclosed = Feature.create!(name:"Enclosed", category: playground)
# nature = Feature.create!(name:"Near nature", category: playground)
# football = Feature.create!(name:"Football field", category: playground)
# basket = Feature.create!(name:"Basketball field", category: playground)
# pingpong = Feature.create!(name:"Pingpong tables", category: playground)
# potty = Feature.create!(name:"Potty available", category: wc)
# diapers = Feature.create!(name:"Diapers available", category: wc)
# changing_room = Feature.create!(name:"Baby changing room", category: wc)
# changing_table = Feature.create!(name:"Changing table", category: wc)
# act_pram = Feature.create!(name:"Accessible with pram", category: wc)
# kid_activities = Feature.create!(name:"Organised activities for kids", category: activity)
# interactive = Feature.create!(name:"Interactive exhibit for kids", category: activity)
# act_age_1 = Feature.create!(name:"Suitable for 1-4 years", category: activity)
# act_age_2 = Feature.create!(name:"Suitable for 5-8 years", category: activity)
# act_age_3 = Feature.create!(name:"Suitable for 9-12 years", category: activity)
# act_pram = Feature.create!(name:"Accessible with pram", category: activity)
# resto = Feature.create!(name:"Restaurant on-site", category: activity)
# act_good_toilets = Feature.create!(name:"Good toilets", category: activity)


Facility.create!(
  name: "Resto Kiddy",
  user: user2,
  category: restaurant,
  address: "Hyde Park",
  city: london,
  website_link: "www.restokiddy.co.uk",
  )

Facility.create!(
  name: "Resto Doudou",
  user: user2,
  category: restaurant,
  address: "Rue Rodin",
  city: paris,
  website_link: "www.restodoudou.fr",
  )

Facility.create!(
  name: "Parc Tintin",
  user: user2,
  category: playground,
  address: "Rue Rodin",
  city: paris,
  )

Facility.create!(
  name: "WC publique Louvre",
  user: user2,
  category: wc,
  address: "Rue Moulin",
  city: paris,
  website_link: "www.lelouvre.fr",
  )

Facility.create!(
  name: "London Dungeons",
  user: user1,
  category: activity,
  address: "Baker Street 3",
  city: london,
  website_link: "www.dungeons.co.uk",
  )

Facility.create!(
  name: "Bungee jumping loco loco",
  user: user1,
  category: activity,
  address: "Plaza Mayor",
  city: madrid,
  website_link: "www.locoloco.es",
  )


puts "seeding done"
