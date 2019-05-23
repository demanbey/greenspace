# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Garden.destroy_all
User.destroy_all

erik = User.new(first_name: "Erik", last_name: "Pong", email: "emailerik@email.com", password: "123456")
aaron = User.create!(first_name: "Aaron", last_name: "Chong", email: "emailaaron@email.com", password: "123456")

erik.remote_photo_url = "https://lh3.googleusercontent.com/-FqOP9ADmAUU/W04mHOMxzyI/AAAAAAAAABw/VlrHRB759PIx2SRuysFlMn0N8u7jpBqVQCEwYBhgL/w280-h280-p/ERik.png"
erik.save


erik_yard = Garden.new(
  name: "Small plot of land in Erik's backyard with lots of sun",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis et provident voluptatibus hic quo corrupti sapiente, cum. Quos commodi, culpa, voluptates ipsam officia asperiores vero quae natus animi sequi quasi. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere cupiditate impedit, minima eum, veritatis, doloremque perspiciatis tempore, unde inventore praesentium autem rem adipisci totam beatae odio quae modi sint quas?",
  capacity: 15,
  location: "4136 Avenue de l'Hotel de Ville, Montreal",
  size: ".25 acres",
  category: "plot",
  user: erik
)

erik_yard.remote_photo_url = "https://static.onecms.io/wp-content/uploads/sites/37/2018/08/15220238/grape-arbor-bench-garden-outside-tool-shed-ff6e7b75.jpg"
erik_yard.save


erik_roof = Garden.new(
  name: "Extra space on Erik's roof",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste fuga quis neque earum optio deleniti qui corporis odio nobis et, necessitatibus maxime placeat voluptatum quaerat amet tempore corrupti. Repellat, minus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex assumenda, aperiam quaerat reiciendis. Quasi sit illum, repellat voluptatum mollitia in ipsa ab? Cum molestias nemo asperiores, numquam perspiciatis nihil unde.",
  capacity: 3,
  location: "5333 Casgrain Ave Montreal, QC",
  size: ".1 acres",
  category: "in progress",
  user: erik
)

erik_roof.remote_photo_url = "https://www.americanroofrepair.com/wp-content/uploads/2015/09/Flat-Roof-Solutions.jpg"
erik_roof.save


aaron_garden = Garden.new(
  name: "Looking for help with vegetable garden",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore placeat magni numquam, reprehenderit doloribus quia voluptas illum recusandae rem, sunt tenetur commodi earum quisquam quam est in assumenda nesciunt nisi. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero vero doloremque dicta, est ipsa quas dolorum, corporis facilis, sed beatae perferendis minus assumenda dolore voluptas quam dignissimos quis quisquam ea!",
  capacity: 10,
  location: "73 Magazine Street, Cambridge, MA",
  size: "1 acre",
  category: "in progress",
  user: aaron
)

aaron_garden.remote_photo_url = "https://i.imgur.com/39bSalZ.jpg"
aaron_garden.save

erik_booking1 = Booking.create!(user_id: erik.id, garden_id: erik_yard.id)
erik_booking2 = Booking.create!(user_id: erik.id, garden_id: erik_roof.id)

arron_booking1 = Booking.create!(user_id: aaron.id, garden_id: aaron_garden.id)
