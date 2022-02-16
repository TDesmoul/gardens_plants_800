puts "Destroying records..."
Garden.destroy_all if Rails.env.development?


puts "Creating gardens..."
little_garden = Garden.create!(
  name: "My Little Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

Garden.create!(
  name: "My Other Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)
puts "Gardens created!"

puts "Creating plant..."
Plant.create!(
  name: "rosebush",
  image_url: "https://www.roses-guillot.com/3910-thickbox_default/rosier-american-pillar.jpg",
  garden: little_garden
)

Plant.create!(
  name: "olivier",
  image_url: "https://www.snhf.org/wp-content/uploads/2020/09/Olivier-ornemental-min.jpg",
  garden: little_garden
)
puts "Plants created!"
