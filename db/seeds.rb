# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Garden.destroy_all
User.destroy_all

print "Creating users..."

erik = User.new(
  first_name: "Erik",
  last_name: "Pong",
  email: "emailerik@email.com",
  password: "123456",
  description: "Really great garderner and human being"
)

print "."

aaron = User.create!(
  first_name: "Aaron",
  last_name: "Chong",
  email: "emailaaron@email.com",
  password: "123456",
  description: "Pretty good gardener and excellent human"
)

print "."

queen = User.create!(
  first_name: "The",
  last_name: "Queen",
  email: "emailqueen@email",
  password: "123456",
  description: "The greatest gardener in all the land. Grovel now, please."
)

print "."

queen.remote_photo_url = "https://img.maximummedia.ie/her_ie/eyJkYXRhIjoie1widXJsXCI6XCJodHRwOlxcXC9cXFwvbWVkaWEtaGVyLm1heGltdW1tZWRpYS5pZS5zMy5hbWF6b25hd3MuY29tXFxcL3dwLWNvbnRlbnRcXFwvdXBsb2Fkc1xcXC8yMDE5XFxcLzAxXFxcLzA4MTYzNTU5XFxcL1F1ZWVuLUVsaXphYmV0aC1JSS0xMDY4NjIxLmpwZ1wiLFwid2lkdGhcIjo3NjcsXCJoZWlnaHRcIjo0MzEsXCJkZWZhdWx0XCI6XCJodHRwczpcXFwvXFxcL3d3dy5oZXIuaWVcXFwvYXNzZXRzXFxcL2ltYWdlc1xcXC9oZXJcXFwvbm8taW1hZ2UucG5nP2lkPWI2M2IwNzFiMTNhMGQ5NGVjNjEzXCIsXCJvcHRpb25zXCI6W119IiwiaGFzaCI6ImZmYmEyNjkzOWMyODg4MTdiOTU0OWNlNDYwMzA2MWM4MDk2MmM5NWMifQ==/queen-elizabeth-ii-1068621.jpg"
queen.save

erik.remote_photo_url = "https://lh3.googleusercontent.com/-FqOP9ADmAUU/W04mHOMxzyI/AAAAAAAAABw/VlrHRB759PIx2SRuysFlMn0N8u7jpBqVQCEwYBhgL/w280-h280-p/ERik.png"
erik.save

aaron.remote_photo_url = "https://scontent-sjc3-1.xx.fbcdn.net/v/t1.0-9/34321416_1759664257460898_9212334121227911168_n.jpg?_nc_cat=105&_nc_ht=scontent-sjc3-1.xx&oh=3f0e9df2ee813ba3d7d7e4f3f0f077ab&oe=5D5223DF"
aaron.save

print "...done!"
puts ""
print "Creating gardens..."

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

print "."

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

print "."

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

print "."

queen_garden = Garden.new(
  name: "I don't need your help. I am self-sufficient queen.",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore placeat magni numquam, reprehenderit doloribus quia voluptas illum recusandae rem, sunt tenetur commodi earum quisquam quam est in assumenda nesciunt nisi. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero vero doloremque dicta, est ipsa quas dolorum, corporis facilis, sed beatae perferendis minus assumenda dolore voluptas quam dignissimos quis quisquam ea!",
  capacity: 0,
  location: "Westminster, London SW1A 1AA, UK",
  size: "1,000 acres",
  category: "in progress",
  user: queen
)

queen_garden.remote_photo_url = "https://www.41hotel.com/blog/-/media/24eb1fee9b75492587133c6512e2ce61.ashx"
queen_garden.save

print "."
puts "Seeding complete"

