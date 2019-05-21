# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Garden.create(
  name: "The Queen's Lace",
  description: "need help planting",
  capacity: 15,
  location: "123 Queensland",
  size: "300 acres",
  photo: "nature_dog_forest_animal_puppy_summer_outdoors_walking-489173_cr0u68",
  category: "plot"
)

Garden.create(
  name: "Madeline's Messy Backyard",
  description: "want some veg and space to hang",
  capacity: 3,
  location: "666 Dirty City Place",
  size: ".25 acres",
  photo: "abandoned_house_graffiti_urbex_pirou_rurex_plant_ruins-794707_ar4pcs",
  category: "rooftop"
)
