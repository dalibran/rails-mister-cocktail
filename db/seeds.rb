# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

Cocktail.create(name: "Daquiri")
Cocktail.create(name: "Maitai")
Cocktail.create(name: "Martini")

Dose.create(description: "5ml", ingredient_id: 3, cocktail_id: 3)
Dose.create(description: "10ml", ingredient_id: 2, cocktail_id: 2)
Dose.create(description: "3ml", ingredient_id: 1, cocktail_id: 1)
