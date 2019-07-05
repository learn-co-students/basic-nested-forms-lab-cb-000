# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Recipe.create(title: "PB & J")
Ingredient.create([{name: "Peanut Butter", quantity: "1", recipe_id: 1},{name: "Jelly", quantity: "1", recipe_id: 1},{name: "Bread", quantity: "2", recipe_id: 1}])

p "Created #{Recipe.count} Recipe and #{Ingredient.count} Ingredients"
