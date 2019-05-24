# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Garden.destroy_all
User.destroy_all

# Seeding Users

print "Creating users..."

erik = User.new(
  first_name: "Erik",
  last_name: "Pong",
  email: "emailerik@email.com",
  password: "123456",
  description: "From Brooklyn originally, looking to participate in a cool project!"
)

print "."

aaron = User.create!(
  first_name: "Aaron",
  last_name: "Chong",
  email: "emailaaron@email.com",
  password: "123456",
  description: "I know over 50 types of cocktails, ask me! Looking to meet some cool people"
)

print "."

queen = User.create!(
  first_name: "The",
  last_name: "Queen",
  email: "emailqueen@email.com",
  password: "123456",
  description: "The greatest gardener in all the land. Grovel now, please."
)

print "."

jerry = User.create!(
  first_name: "Jerry",
  last_name: "deManbey",
  email: "emailjerry@email.com",
  password: "123456",
  description: "I recently moved to Montreal. I'm really into environmental issues and looking to do my part "
)

print "."

mary = User.create!(
  first_name: "Mary",
  last_name: "Smith",
  email: "emailmary@email.com",
  password: "123456",
  description: "Love all things garden! Looking forward to meeting all of you"
)

print "."

martin = User.create!(
  first_name: "Martin",
  last_name: "Lewinski",
  email: "emailmartin@email.com",
  password: "123456",
  description: "New from Poland! Looking to learn english and garden"
)

print "."

claire = User.create!(
  first_name: "Claire",
  last_name: "Clark",
  email: "emailclaire@email.com",
  password: "123456",
  description: "Love gardening, and looking to grow my own vegetables"
)

print "."

donald = User.create!(
  first_name: "Donald",
  last_name: "Kiney",
  email: "emaildonaldemail.com",
  password: "123456",
  description: "Stressful job...need to get away for a little bit"
)

bernie = User.create!(
  first_name: "Bernie",
  last_name: "Wozniak",
  email: "emailbernie@email.com",
  password: "123456",
  description: "Into equality, and would love to distribute my harvest"
)

print "."

marc = User.create!(
  first_name: "Marc",
  last_name: "Andre",
  email: "emailmarc@email.com",
  password: "123456",
  description: "Love getting my hands dirty and would like to beautify an empty space"
)

print "."

# Pictures

queen.remote_photo_url = "https://img.maximummedia.ie/her_ie/eyJkYXRhIjoie1widXJsXCI6XCJodHRwOlxcXC9cXFwvbWVkaWEtaGVyLm1heGltdW1tZWRpYS5pZS5zMy5hbWF6b25hd3MuY29tXFxcL3dwLWNvbnRlbnRcXFwvdXBsb2Fkc1xcXC8yMDE5XFxcLzAxXFxcLzA4MTYzNTU5XFxcL1F1ZWVuLUVsaXphYmV0aC1JSS0xMDY4NjIxLmpwZ1wiLFwid2lkdGhcIjo3NjcsXCJoZWlnaHRcIjo0MzEsXCJkZWZhdWx0XCI6XCJodHRwczpcXFwvXFxcL3d3dy5oZXIuaWVcXFwvYXNzZXRzXFxcL2ltYWdlc1xcXC9oZXJcXFwvbm8taW1hZ2UucG5nP2lkPWI2M2IwNzFiMTNhMGQ5NGVjNjEzXCIsXCJvcHRpb25zXCI6W119IiwiaGFzaCI6ImZmYmEyNjkzOWMyODg4MTdiOTU0OWNlNDYwMzA2MWM4MDk2MmM5NWMifQ==/queen-elizabeth-ii-1068621.jpg"
queen.save

erik.remote_photo_url = "https://lh3.googleusercontent.com/-FqOP9ADmAUU/W04mHOMxzyI/AAAAAAAAABw/VlrHRB759PIx2SRuysFlMn0N8u7jpBqVQCEwYBhgL/w280-h280-p/ERik.png"
erik.save

aaron.remote_photo_url = "https://scontent-sjc3-1.xx.fbcdn.net/v/t1.0-9/34321416_1759664257460898_9212334121227911168_n.jpg?_nc_cat=105&_nc_ht=scontent-sjc3-1.xx&oh=3f0e9df2ee813ba3d7d7e4f3f0f077ab&oe=5D5223DF"
aaron.save

jerry.remote_photo_url = "http://genfkd.wpengine.netdna-cdn.com/wp-content/uploads/2018/05/shutterstock_793117360-503x518.jpg"
jerry.save

mary.remote_photo_url = "https://srkheadshotday.com/wp-content/uploads/Caitlin_Fitzgerald_Headshot_16K7153.jpg"
mary.save

martin.remote_photo_url = "https://static1.squarespace.com/static/55550428e4b0d770e3f981ab/t/5c8485c0f4e1fc79d4f506b7/1531332941077/Happy+Hour+Headshot+Philadelphia+Headshots"
martin.save

claire.remote_photo_url = "https://truestudios.biz/images/headshots/Free_Headshot_Columbus_7.jpg"
claire.save

donald.remote_photo_url = "https://www.robertmcgee.ca/wp-content/uploads/2018/02/Curtis-kids-actor-headshots-0O7C9011-2.jpg"
donald.save

bernie.remote_photo_url = "https://cdn.fstoppers.com/styles/large-16-9/s3/lead/2014/12/fstoppers-dylan-patrick-setting-up-a-successful-headshot-session-8.jpg"
bernie.save

marc.remote_photo_url = "https://i.pinimg.com/736x/2e/0a/f8/2e0af89dac4dbf2aae5bbca791adb4c6.jpg"
marc.save

print "...done!"
puts ""
print "Creating gardens..."

# Gardens

erik_yard = Garden.new(
  name: "Erik's Backyard",
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
  name: "Erik's Roof",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste fuga quis neque earum optio deleniti qui corporis odio nobis et, necessitatibus maxime placeat voluptatum quaerat amet tempore corrupti. Repellat, minus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex assumenda, aperiam quaerat reiciendis. Quasi sit illum, repellat voluptatum mollitia in ipsa ab? Cum molestias nemo asperiores, numquam perspiciatis nihil unde.",
  capacity: 3,
  location: "5333 Casgrain Ave Montreal, QC",
  size: ".1 acres",
  category: "in progress",
  user: erik
)

erik_roof.remote_photo_url = "https://www.ikea.com/images/a-small-rooftop-garden-is-set-up-with-a-patch-of-grass-4f9e163ff2ed0590e215bf6ef28670be.jpg?f=s"
erik_roof.save

print "."

aaron_garden = Garden.new(
  name: "Tomatoe Garden",
  description: "Lore4m ipsum dolor sit amet, consectetur adipisicing elit. Tempore placeat magni numquam, reprehenderit doloribus quia voluptas illum recusandae rem, sunt tenetur commodi earum quisquam quam est in assumenda nesciunt nisi. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero vero doloremque dicta, est ipsa quas dolorum, corporis facilis, sed beatae perferendis minus assumenda dolore voluptas quam dignissimos quis quisquam ea!",
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
  name: "Buckingham Palace",
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

cucumber_patch = Garden.new(
  name: "Cucumber Patch",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore placeat magni numquam, reprehenderit doloribus quia voluptas illum recusandae rem, sunt tenetur commodi earum quisquam quam est in assumenda nesciunt nisi. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero vero doloremque dicta, est ipsa quas dolorum, corporis facilis, sed beatae perferendis minus assumenda dolore voluptas quam dignissimos quis quisquam ea!",
  capacity: 8,
  location: "5550 St Laurent Blvd, Montreal, QC H2T 1S8",
  size: ".5 acre",
  category: "in progress",
  user: jerry
)

cucumber_patch.remote_photo_url = "https://live.staticflickr.com/6026/5967962369_8bceb23a9e_b.jpg"
cucumber_patch.save

print "."

fix_project = Garden.new(
  name: "Downtown Fixer",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore placeat magni numquam, reprehenderit doloribus quia voluptas illum recusandae rem, sunt tenetur commodi earum quisquam quam est in assumenda nesciunt nisi. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero vero doloremque dicta, est ipsa quas dolorum, corporis facilis, sed beatae perferendis minus assumenda dolore voluptas quam dignissimos quis quisquam ea!",
  capacity: 10,
  location: "4631 Saint-Laurent Blvd, Montreal, QC H2T 1R2",
  size: ".1 acres",
  category: "in progress",
  user: martin
)

fix_project.remote_photo_url = "https://upload.wikimedia.org/wikipedia/commons/5/5c/MainStreetGarden03.jpg"
fix_project.save

print "."

train_garden = Garden.new(
  name: "By the Tracks",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore placeat magni numquam, reprehenderit doloribus quia voluptas illum recusandae rem, sunt tenetur commodi earum quisquam quam est in assumenda nesciunt nisi. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero vero doloremque dicta, est ipsa quas dolorum, corporis facilis, sed beatae perferendis minus assumenda dolore voluptas quam dignissimos quis quisquam ea!",
  capacity: 3,
  location: "5242 Park Ave, Montreal, QC H2V 4G7",
  size: ".2 acres",
  category: "in progress",
  user: claire
)

train_garden.remote_photo_url = "http://carloadexpress.com/wp-content/uploads/2017/10/swp4006-winery-october-07-2017bRAW.jpg"
train_garden.save

print "."

kinder_garden = Garden.new(
  name: "Kinder Garden",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore placeat magni numquam, reprehenderit doloribus quia voluptas illum recusandae rem, sunt tenetur commodi earum quisquam quam est in assumenda nesciunt nisi. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero vero doloremque dicta, est ipsa quas dolorum, corporis facilis, sed beatae perferendis minus assumenda dolore voluptas quam dignissimos quis quisquam ea!",
  capacity: 5,
  location: "6631 St Laurent Blvd, Montreal, QC H2S 3C5",
  size: ".05 acres",
  category: "in progress",
  user: donald
)

kinder_garden.remote_photo_url = "https://tickikids.ams3.cdn.digitaloceanspaces.com/z3.cache/gallery/organizations/88/image_5aa51d205a5f77.93382859.jpg"
kinder_garden.save

print "."

ind_roof = Garden.new(
  name: "Industrial Rooftop",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore placeat magni numquam, reprehenderit doloribus quia voluptas illum recusandae rem, sunt tenetur commodi earum quisquam quam est in assumenda nesciunt nisi. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero vero doloremque dicta, est ipsa quas dolorum, corporis facilis, sed beatae perferendis minus assumenda dolore voluptas quam dignissimos quis quisquam ea!",
  capacity: 30,
  location: "Montreal, QC H2S 1Z3",
  size: "3 acres",
  category: "in progress",
  user: aaron
)

ind_roof.remote_photo_url = "http://www.architectureartdesigns.com/wp-content/uploads/2017/09/18-Fantastic-Industrial-Deck-Designs-For-The-Outdoor-Lifestyle-Lovers-3.jpg"
ind_roof.save

print "."

apt_backyard = Garden.new(
  name: "Apartment Zen",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore placeat magni numquam, reprehenderit doloribus quia voluptas illum recusandae rem, sunt tenetur commodi earum quisquam quam est in assumenda nesciunt nisi. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero vero doloremque dicta, est ipsa quas dolorum, corporis facilis, sed beatae perferendis minus assumenda dolore voluptas quam dignissimos quis quisquam ea!",
  capacity: 7,
  location: "1201 Ave Van Horne, Outremont, QC H2V 1K4",
  size: ".4 acres",
  category: "in progress",
  user: bernie
)

apt_backyard.remote_photo_url = "https://cdn.gardenista.com/wp-content/uploads/2015/04/fields/apartment-garden-ideas-to-steal-green-roof-marie-viljoen-gardenista.jpg"
apt_backyard.save

print "."

puts "...done!"
print "Creating bookings..."

book1 = Booking.new(
  garden_id: 112,
  user_id: 5,
  approved: true,
  completed: false
)

print "."

book2 = Booking.new(
  garden_id: 112,
  user_id: 3,
  approved: true,
  completed: false
)

print "."

book3 = Booking.new(
  garden_id: 112,
  user_id: 6,
  approved: true,
  completed: false
)

print "...done!"

