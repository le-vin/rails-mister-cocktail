# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.delete_all


Ingredient.create(name: "Rum")
Ingredient.create(name: "Vodka")
Ingredient.create(name: "Tiquila")
Ingredient.create(name: "Lemon")
Ingredient.create(name: "Ice")
Ingredient.create(name: "Mint leaves")
Ingredient.create(name: "Coca Cola")
Ingredient.create(name: "Soda")
Ingredient.create(name: "Tonic Water")
Ingredient.create(name: "Orange Juice")
Ingredient.create(name: "Sugar")
Ingredient.create(name: "Ginger Beer")

puts "We have #{Ingredient.count} Ingredients!"
