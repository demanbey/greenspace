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
  name: "Small plot of land in backyard with lots of sun",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis et provident voluptatibus hic quo corrupti sapiente, cum. Quos commodi, culpa, voluptates ipsam officia asperiores vero quae natus animi sequi quasi. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere cupiditate impedit, minima eum, veritatis, doloremque perspiciatis tempore, unde inventore praesentium autem rem adipisci totam beatae odio quae modi sint quas?",
  capacity: 15,
  location: "4136 Avenue de l'Hotel de Ville",
  size: ".25 acres",
  photo: "nature_dog_forest_animal_puppy_summer_outdoors_walking-489173_cr0u68",
  category: "plot",
  user: erik
)

madeline_garden = Garden.create!(
  name: "Extra space on my roof",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste fuga quis neque earum optio deleniti qui corporis odio nobis et, necessitatibus maxime placeat voluptatum quaerat amet tempore corrupti. Repellat, minus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex assumenda, aperiam quaerat reiciendis. Quasi sit illum, repellat voluptatum mollitia in ipsa ab? Cum molestias nemo asperiores, numquam perspiciatis nihil unde.",
  capacity: 3,
  location: "4400 Boyer Avenue",
  size: ".1 acres",
  photo: "abandoned_house_graffiti_urbex_pirou_rurex_plant_ruins-794707_ar4pcs",
  category: "in progress",
  user: erik
)

ben_garden = Garden.create!(
  name: "Looking for help with vegetable garden",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore placeat magni numquam, reprehenderit doloribus quia voluptas illum recusandae rem, sunt tenetur commodi earum quisquam quam est in assumenda nesciunt nisi. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero vero doloremque dicta, est ipsa quas dolorum, corporis facilis, sed beatae perferendis minus assumenda dolore voluptas quam dignissimos quis quisquam ea!",
  capacity: 10,
  location: "4200 Laurier Avenue",
  size: "1 acre",
  photo: "/assets/images/KingGuardian.jpg",
  category: "in progress",
  user: aaron
)

erik_booking1 = Booking.create!(user_id: erik.id, garden_id: queen_garden.id)
erik_booking2 = Booking.create!(user_id: erik.id, garden_id: madeline_garden.id)

arron_booking1 = Booking.create!(user_id: aaron.id, garden_id: ben_garden.id)
