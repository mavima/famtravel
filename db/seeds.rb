# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "starting seed"

City.destroy_all
Facility.destroy_all
Category.destroy_all
Feature.destroy_all
FeatureCategory.destroy_all
FeatureFacility.destroy_all
Review.destroy_all
User.destroy_all

puts "destroyed all models"


user1 = User.create!(email: "user1@a.a", password: "password", first_name: "Emilie", last_name: "Moulin", country: "France", kids_age_group: "none")
user2 = User.create!(email: "user2@a.a", password: "password", first_name: "Marta", last_name: "Sanchez", country: "Spain", kids_age_group: "3-5")

puts "created users"

london = City.create!(name:"London", country:"United Kingdom")
paris = City.create!(name:"Paris", country:"France")
madrid = City.create!(name:"Madrid", country:"Spain")

puts "created cities"


#Categories DO NOT DESTROY THIS
restaurant = Category.create!(name:"Restaurant")
playground = Category.create!(name:"Playground")
activity = Category.create!(name:"Activity")
wc = Category.create!(name:"Restroom")

puts "created categories"

#Features DO NOT DESTROY THIS
high_chair = Feature.create!(name: "High chair")
high_chair_resto = FeatureCategory.create!(feature: high_chair, category: restaurant)
pram = Feature.create!(name:"Accessible with pram")
resto_pram = FeatureCategory.create!(feature: pram, category: restaurant)
menu = Feature.create!(name:"Kid’s menu")
kids_menu = FeatureCategory.create!(feature: menu, category: restaurant)
health = Feature.create!(name:"Healthy options")
healthy_options = FeatureCategory.create!(feature: health, category: restaurant)
buff = Feature.create!(name:"Buffet")
buffet = FeatureCategory.create!(feature: buff, category: restaurant)
fast = Feature.create!(name:"Fast service")
fast_service = FeatureCategory.create!(feature: fast, category: restaurant)
quality = Feature.create!(name:"Good quality for price")
quality_price = FeatureCategory.create!(feature: quality, category: restaurant)
corner = Feature.create!(name:"Kids’ corner")
kids_corner = FeatureCategory.create!(feature: corner, category: restaurant)
toilet = Feature.create!(name:"Good toilets")
resto_toilets = FeatureCategory.create!(feature: toilet, category: restaurant)
changing_room = Feature.create!(name:"Baby changing room")
resto_changing_room = FeatureCategory.create!(feature: changing_room, category: restaurant)
changing_table = Feature.create!(name:"Changing table")
resto_changing_table  = FeatureCategory.create!(feature: changing_table, category: restaurant)
age_1 = Feature.create!(name:"Suitable for 1-4 years")
pg_age_1 = FeatureCategory.create!(feature: age_1, category: playground)
age_2 = Feature.create!(name:"Suitable for 5-8 years")
pg_age_2 = FeatureCategory.create!(feature: age_2, category: playground)
age_3 = Feature.create!(name:"Suitable for 9-12 years")
pg_age_3 = FeatureCategory.create!(feature: age_3, category: playground)
wc_close = Feature.create!(name:"Toilets nearby")
pg_wc_close = FeatureCategory.create!(feature: wc_close, category: playground)
water = Feature.create!(name:"Water games")
pg_water = FeatureCategory.create!(feature: water, category: playground)
enclosed = Feature.create!(name:"Enclosed")
pg_enclosed = FeatureCategory.create!(feature: enclosed, category: playground)
nature = Feature.create!(name:"Near nature")
pg_nature = FeatureCategory.create!(feature: nature, category: playground)
football = Feature.create!(name:"Football field")
pg_football = FeatureCategory.create!(feature: football, category: playground)
basket = Feature.create!(name:"Basketball field")
pg_basket = FeatureCategory.create!(feature: basket, category: playground)
pingpong = Feature.create!(name:"Pingpong tables")
pg_pingpong = FeatureCategory.create!(feature: pingpong, category: playground)
potty = Feature.create!(name:"Potty available")
wc_potty = FeatureCategory.create!(feature: potty, category: wc)
diapers = Feature.create!(name:"Diapers available")
wc_diapers = FeatureCategory.create!(feature: diapers, category: wc)
wc_changing_room = FeatureCategory.create!(feature: changing_room, category: wc)
wc_changing_table = FeatureCategory.create!(feature: changing_table, category: wc)
act_pram = FeatureCategory.create!(feature: pram, category: activity)
activities = Feature.create!(name:"Organised activities for kids")
act_activities = FeatureCategory.create!(feature: activities, category: activity)
interactive = Feature.create!(name:"Interactive exhibit for kids")
act_interactive = FeatureCategory.create!(feature: interactive, category: activity)
act_age_1 = FeatureCategory.create!(feature: age_1, category: activity)
act_age_2 = FeatureCategory.create!(feature: age_2, category: activity)
act_age_3 = FeatureCategory.create!(feature: age_3, category: activity)
act_pram = FeatureCategory.create!(feature: pram, category: activity)
resto = Feature.create!(name:"Restaurant on-site")
pg_resto = FeatureCategory.create!(feature: resto, category: activity)
act_good_toilets = FeatureCategory.create!(feature: toilet, category: activity)

puts "created features and features categories"

Facility.create(name: "teste", user: user2, category: restaurant, address: "barcelona", city: paris)


puts "resto test"
Facility.create!(
  name: "Resto Doudou",
  user: user2,
  category: restaurant,
  address: "Rue Rodin",
  city: paris,
  website_link: "www.restodoudou.fr"
  )


Facility.create!(
  name: "Parc Tintin",
  user: user2,
  category: playground,
  address: "Rue Rodin",
  city: paris
  )


Facility.create!(
  name: "WC publique Louvre",
  user: user2,
  category: wc,
  address: "Rue Moulin",
  city: paris,
  website_link: "www.lelouvre.fr"
  )


Facility.create!(
  name: "London Dungeons",
  user: user1,
  category: activity,
  address: "Baker Street 3",
  city: london,
  website_link: "www.dungeons.co.uk"
  )


Facility.create!(
  name: "Bungee jumping loco loco",
  user: user1,
  category: activity,
  address: "Plaza Mayor",
  city: madrid,
  website_link: "www.locoloco.es"
  )


puts "created facilities"

puts "seeding done"
