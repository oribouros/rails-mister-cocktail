# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying ingredients..."
Ingredient.destroy_all
Cocktail.destroy_all

# require 'json'
# require 'open-uri'

# path = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
#   records = JSON.parse(open(path).read)

#   value1 = records["drinks"]
#   value2 = value1

#   records.each do |ing|
#     Ingredient.create!(ing["strIngredient1"])
#   end

response = RestClient.get('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list')
json = JSON.parse(response, symbolize_names: true)


json[:drinks].each do |drink|
  Ingredient.create!(name: drink[:strIngredient1])
end

puts "Ingredients are seeded. Done!"
