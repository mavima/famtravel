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
FeatureCategory.destroy_all
FeatureFacility.destroy_all
Category.destroy_all
Feature.destroy_all
User.destroy_all
Review.destroy_all


puts "destroyed all models"


user1 = User.create!(email: "user1@a.a", password: "password", first_name: "Emilie", last_name: "Moulin", country: "France")
user2 = User.create!(email: "user2@a.a", password: "password", first_name: "Marta", last_name: "Sanchez", country: "Spain")
admin = User.create!(email: "famtravel@gmail.com", password: "password", first_name: "fam", last_name: "travel", country: "spain", admin: true)

puts "created users"

london = City.create!(name:"London", country_city:"United Kingdom", remote_photo_url: "https://res.cloudinary.com/dbaejiyab/image/upload/v1566827895/photo-1505761671935-60b3a7427bad_pgxxw4.jpg")
paris = City.create!(name:"Paris", country_city:"France", remote_photo_url: "https://res.cloudinary.com/dbaejiyab/image/upload/v1566827938/photo-1524396309943-e03f5249f002_k6ibfr.jpg")
madrid = City.create!(name:"Madrid", country_city:"Spain", remote_photo_url: "https://res.cloudinary.com/dbaejiyab/image/upload/v1566827975/photo-1543783207-ec64e4d95325_ux2mzx.jpg")

puts "created cities"


#Categories DO NOT DESTROY THIS

restaurant = Category.create!(name:"Restaurant")



playground = Category.create!(name:"Playground", remote_photo_url: "https://res.cloudinary.com/dbaejiyab/image/upload/v1566551433/guwif2kmsgqds87xlk8k.jpg")
activity = Category.create!(name:"Activity", remote_photo_url: "https://res.cloudinary.com/dbaejiyab/image/upload/v1566481865/ylnzudnosxkaarja9mxf.jpg")
wc = Category.create!(name:"Restroom", remote_photo_url: "https://res.cloudinary.com/dbaejiyab/image/upload/v1566420240/wolqy1kxaexriuy2aucg.jpg")

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
  address: "8 Rue Tournefort, 75005 Paris",
  city: paris,
  website_link: "www.restodoudou.fr",
  remote_photo_url: "https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
  )

Facility.create!(
  name: "Restaurant du quartier",
  user: user1,
  category: restaurant,
  address: "33 Boulevard Arago, 75013 Paris",
  city: paris,
  website_link: "www.restoduquartier.fr",
  remote_photo_url: "https://images.unsplash.com/photo-1556742393-d75f468bfcb0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
  )

Facility.create!(
  name: "The English Rose Cafe and Tea Shop",
  user: user2,
  category: restaurant,
  address: "4 Lower Grosvenor Place, Londres SW1W 0EJ, Reino Unido",
  city: london,
  website_link: "theenglishrosecafe.co.uk",
  remote_photo_url: "https://images.unsplash.com/photo-1517740642137-bc729c123aa5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=564&q=80"
  )

Facility.create!(
  name: "Mother Mash",
  user: user1,
  category: restaurant,
  address: "26 Ganton Street, Londres W1F 7QZ, Reino Unido",
  city: london,
  website_link: "mothermash.co.uk",
  remote_photo_url: "https://images.unsplash.com/photo-1484659619207-9165d119dafe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
  )


Facility.create!(
  name: "El sur",
  user: user2,
  category: restaurant,
  address: "Calle de la Torrecilla del Leal, 12, 28012 Madrid",
  city: madrid,
  website_link: "Web site in construction",
  remote_photo_url: "https://images.unsplash.com/photo-1526069631228-723c945bea6b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
  )

Facility.create!(
  name: "Juana la Loca",
  user: user1,
  category: restaurant,
  address: "Plaza de Puerta de Moros, 4",
  city: london,
  website_link: "juanalalocamadrid.com",
  remote_photo_url: "https://images.unsplash.com/photo-1500482176473-ccba10e1e880?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
  )



puts "create playground"
Facility.create!(
  name: "Parc Tintin",
  user: user2,
  category: playground,
  address: "Rue Rodin",
  city: paris,
  remote_photo_url: "https://images.unsplash.com/photo-1460788150444-d9dc07fa9dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
  )

Facility.create!(
  name: "Parc de Jeux",
  user: user1,
  category: playground,
  address: "Jardin du Luxembourg, 75006 París, Francia, Luxembourg, 6ème",
  city: paris,
  remote_photo_url: "https://images.unsplash.com/photo-1552537595-b30edb7afd9d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
  )

Facility.create!(
  name: "Fortune Street Park",
  user: user2,
  category: playground,
  address: "Nr Black Lion Gate, Broad Walk, London W2 2UH",
  city: london,
  remote_photo_url: "https://images.unsplash.com/photo-1556863402-b5d84ed0b6d5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
  )

Facility.create!(
  name: "Allen Gardens",
  user: user2,
  category: playground,
  address: "Buxton Street, Londres E1 5AT, Reino Unido",
  city: london,
  remote_photo_url: "https://images.unsplash.com/photo-1553158399-3796bdbc82fd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
  )

Facility.create!(
  name: "Zona de Recreo",
  user: user2,
  category: playground,
  address: "Calle de Alfonso XII, s/n, Madrid",
  city: madrid,
  remote_photo_url: "https://images.unsplash.com/photo-1560831269-3faa2fc0b932?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80"
  )

Facility.create!(
  name: "Parque Félix",
  user: user2,
  category: playground,
  address: "Calle Villamanín, s/n,Madrid",
  city: madrid,
  remote_photo_url: "https://images.unsplash.com/photo-1521220609214-a8552380c7a4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1053&q=80"
  )


puts "create WC"
Facility.create!(
  name: "WC publique Louvre",
  user: user2,
  category: wc,
  address: "Rue Moulin",
  city: paris,
  website_link: "www.lelouvre.fr",
  remote_photo_url: "https://images.unsplash.com/photo-1551514349-61a9c164186c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1039&q=80"
  )

Facility.create!(
  name: "WC de la gare",
  user: user2,
  category: wc,
  address: "Place du 11 Novembre 1918, 75010 París, Francia",
  city: paris,
  website_link: "",
  remote_photo_url: "https://images.unsplash.com/photo-1518618750560-8f07abde4e4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1150&q=80"
  )

Facility.create!(
  name: "WC of the station",
  user: user1,
  category: wc,
  address: "Euston Road, Londres N1C 4QP, Reino Unido",
  city: london,
  website_link: "",
  remote_photo_url: "https://images.unsplash.com/photo-1465257474426-bd133d4db35e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1189&q=80"
  )

Facility.create!(
  name: "Liverpool Street Station",
  user: user2,
  category: wc,
  address: "Liverpool Street, Londres EC2M 7PP, Reino Unido",
  city: london,
  website_link: "",
  remote_photo_url: "https://images.unsplash.com/photo-1533429408967-dcefa1c13fd5?ixlib=rb-1.2.1&auto=format&fit=crop&w=957&q=80"
  )

Facility.create!(
  name: "WC de la estacion",
  user: user1,
  category: wc,
  address: "Avenida de los Estados, 28945 Madrid",
  city: madrid,
  website_link: "",
  remote_photo_url: "https://images.unsplash.com/photo-1544093722-c84672dd328a?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"
  )

Facility.create!(
  name: "WC gloria",
  user: user1,
  category: wc,
  address: "Paseo del Rey s/n, 28008 Madrid",
  city: madrid,
  website_link: "",
  remote_photo_url: "https://images.unsplash.com/photo-1538724792994-cbeb7b4dc860?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
  )



puts "create activity"
Facility.create!(
  name: "London Dungeons",
  user: user1,
  category: activity,
  address: "Baker Street 3",
  city: london,
  website_link: "www.dungeons.co.uk",
  remote_photo_url: "https://images.unsplash.com/photo-1561649170-8bde352e0369?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
  )

Facility.create!(
  name: "The Regent’s Park",
  user: user1,
  category: activity,
  address: "Chester Road, Londres NW1 4NR, Reino Unido",
  city: london,
  website_link: "royalparks.org.uk",
  remote_photo_url: "https://images.unsplash.com/photo-1446844805183-9f5af45f89ee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80"
  )

Facility.create!(
  name: "Estanque Grande del Buen Retiro",
  user: user2,
  category: activity,
  address: "Paseo de Colombia, 2, 28014 Madrid",
  city: madrid,
  website_link: "",
  remote_photo_url: "https://images.unsplash.com/photo-1552676382-77b33d7639fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
  )

Facility.create!(
  name: "Bungee jumping loco loco",
  user: user1,
  category: activity,
  address: "Plaza Mayor",
  city: madrid,
  website_link: "www.locoloco.es",
  remote_photo_url: "https://images.unsplash.com/photo-1560111137-72f7022e94c6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
)

Facility.create!(
  name: "Le Parc des Buttes Chaumont",
  user: user2,
  category: activity,
  address: "1 rue Botzaris, 75019 París, Francia",
  city: paris,
  website_link: "www.paris.fr",
  remote_photo_url: "https://staygenerator.com/web/media/parallel/paris/neighbourhoods/parcdechuttes.jpg?mode=max&quality=100"
  )

Facility.create!(
  name: "Bois de Boulogne",
  user: user2,
  category: activity,
  address: "Bois de Boulogne, PARIS 75016",
  city: paris,
  website_link: "",
  remote_photo_url: "https://www.transilien.com/sites/default/files/styles/editorial/public/thumbnails/image/bois-de-boulogne_atlantis-fotolia_com_414x311.jpg?itok=wWFJ_-33"
  )

puts "created facilities"

puts "seeding done"
