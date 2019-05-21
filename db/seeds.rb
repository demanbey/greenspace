# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Garden.destroy_all

erik = User.create!(first_name: "erik", last_name: "pong", email: "emailerik@email.com", password: "123456")
aaron = User.create!(first_name: "aaron", last_name: "chong", email: "emailaaron@email.com", password: "123456")


queen_garden = Garden.create!(
  name: "The Queen's Lace",
  description: "need help planting dlasdfasdfafffffffffffffffffffffffffffffffkdfkldlkdlkdldldslkadlkasdflkasldfksaldkfaslkfjasldkf",
  capacity: 15,
  location: "123 Queensland",
  size: "300 acres",
  photo: "nature_dog_forest_animal_puppy_summer_outdoors_walking-489173_cr0u68",
  category: "plot",
  user: erik
)

madeline_garden = Garden.create!(
  name: "Madeline's Messy Backyard",
  description: "want some veg and space to hang alsdkasdfffffffffffffffffffffffffffffffffffffffffffjsalkdfjsalfkjslfkjdslkfjaslfkjsdalfksd",
  capacity: 3,
  location: "666 Dirty City Place",
  size: ".25 acres",
  photo: "abandoned_house_graffiti_urbex_pirou_rurex_plant_ruins-794707_ar4pcs",
  category: "rooftop",
  user: erik
)

ben_garden = Garden.create!(
  name: "Ben's Backyard",
  description: "aasdwwwwwwwwwwwwwwwweeeeeeeeeeeeeeeeeeeeeeeefffffffffffffffffffffjsalkdfjsalfkjslfkjdslkfjaslfkjsdalfksd",
  capacity: 10,
  location: "1010 Ouch Street",
  size: "1 acre",
  photo: "/assets/images/KingGuardian.jpg",
  category: "rooftop",
  user: aaron
)

erik_booking1 = Booking.create!(user_id: erik.id, garden_id: queen_garden.id)
erik_booking2 = Booking.create!(user_id: erik.id, garden_id: madeline_garden.id)

arron_booking1 = Booking.create!(user_id: aaron.id, garden_id: ben_garden.id)
