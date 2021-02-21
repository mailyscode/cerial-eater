# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all top fives..."
puts "Destroying resources..."
Crop.destroy_all
Resource.destroy_all

# WHEAT
puts "Creating wheat seeds..."
top_5_wheat_countries = {
  "China" => ["134,250,000", "125,000"],
  "India" => ["107,592,000", "96,629"],
  "Russia" => ["85,300,000", "40,500"],
  "United States" => ["49,691,000", "30,024"],
  "Canada" => ["35,183,000", "8,863"]
}

top_5_wheat_countries.each do |key, value|
  crop = Crop.new(
    name: "wheat",
    country: key,
    produced_quantity: value.first,
    consumed_quantity: value.last,
    crop_type: "wheat"
  )
  crop.save
end

# RICE
puts "Creating rice seeds..."
top_5_rice_countries = {
  "China" => ["148,300,000", "146,500"],
  "India" => ["120,000,000", "106,000"],
  "Bangladesh" => ["35,300,000", "35,800"],
  "Indonesia" => ["34,900,000", "35,400"],
  "Vietnam" => ["27,100,000", "21,200"]
}

top_5_rice_countries.each do |key, value|
  crop = Crop.new(
    name: "rice",
    country: key,
    produced_quantity: value.first,
    consumed_quantity: value.last,
    crop_type: "rice"
  )
  crop.save
end

# CORN
puts "Creating corn seeds..."
top_5_corn_countries = {
  "United States" => ["360,252,000", "12,295"],
  "China" => ["260,670,000", "10,984"],
  "Brazil" => ["109,000,000", "2,598"],
  "European Union" => ["63,600,000", "3,248"],
  "Argentina" => ["47,500,000", "0,591"]
}

top_5_corn_countries.each do |key, value|
  crop = Crop.new(
    name: "corn",
    country: key,
    produced_quantity: value.first,
    consumed_quantity: value.last,
    crop_type: "corn"
  )
  crop.save
end

#RESOURCES
puts "Creating resources..."
all_documentaries = {
  "SOLUTIONS LOCALES POUR UN DESORDRE GLOBAL" => ["https://www.imagotv.fr/documentaires/solutions-locales-pour-un-desordre-global", 'french'],
  "LA GUERRE DES GRAINES" => ["https://www.imagotv.fr/documentaires/la-guerre-des-graines", 'french'],
  "Tuto de seed bombing (avec Ophélie Ta mère nature)" => ["https://www.imagotv.fr/emissions/edeni/28", 'french'],
  "THE WAR ON WHEAT" => ["https://topdocumentaryfilms.com/war-wheat/", 'english'],
  "SEEDS OF FREEDOM" => ["https://topdocumentaryfilms.com/seeds-of-freedom/", 'english'],
  "FOOD, INC" => ["https://topdocumentaryfilms.com/food-inc/", 'english'],
  "Carb-Loaded: A Culture Dying to Eat" => ["https://topdocumentaryfilms.com/carb-loaded-culture-dying-eat/", 'english'],
  "SEEDS OF DEATH" => ["https://topdocumentaryfilms.com/seeds-death/", 'english'],
  "DRYLANDERS" => ["https://www.youtube.com/watch?v=mCQqakScRSI", 'english']
}

all_books = {
  "Uncertain Harvest: The Future of Food on a Warming Planet" =>  ["by Ian Mosby, Sarah Rotz, Evan D.G. Fraser", 'english'],
  "Earth Democracy: Justice, Sustainability, and Peace " =>  ["by Vandana Shiva", 'english'],
  "Who Really Feeds the World?: The Failures of Agribusiness and the Promise of Agroecology" =>  ["by Vandana Shiva", 'english'],
  "Food or War" =>  ["by Julian Cribb", 'english'],
  "The Triumph of Seeds" =>  ["by Thor Hanson", 'english'],
  "Wheat Belly" =>  ["by William Davis", 'english'],
  "Perilous Bounty" =>  ["by Tom Philpott", 'english'],
  "Cerealizing America: The Unsweetened Story of American Breakfast Cereal" =>  ["by Scott Bruce & Bill Crawford", 'english'],
  "The Kelloggs: The Battling Brothers of Battle Creek" => ["by Howard Markel", 'english'],
  "Cereal Tycoon: Henry Parsons Crowell Founder of the Quaker Oats Co." =>  ["by Joe Musser", 'english']
}

#BOOKS
puts "Creating resources - books..."
all_books.each do |key, value|
  book = Resource.new(
    resource_type: "book",
    language: value[1],
    title: key,
    author: value[0],
    url: nil
  )
  book.save!
end

#DOCUMENTARIES
puts "Creating resources - documentaries..."
all_documentaries.each do |key, value|
  documentary = Resource.new(
    resource_type: "documentary",
    language: value[1],
    title: key,
    author: nil,
    url: value[0]
  )
  documentary.save!
end
