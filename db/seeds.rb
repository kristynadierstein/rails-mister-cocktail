# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all


orange = Ingredient.create(name: "orange")
whisky = Ingredient.create(name: "whisky")
lemonade = Ingredient.create(name: "lemonade")
ginger = Ingredient.create(name: "ginger")
beer = Ingredient.create(name: "beer")
gin = Ingredient.create(name: "gin")
orange_juice = Ingredient.create(name: "orange juice")



cuba_libre = Cocktail.create(name: "Cuba Libre")
coke = Ingredient.create(name: "coke")
rhum = Ingredient.create(name: "rhum")
lemon = Ingredient.create(name: "lemon")
Dose.create(description: "2 units", ingredient_id: rhum.id, cocktail_id: cuba_libre.id)
Dose.create(description:"1 unit", ingredient_id: coke.id, cocktail_id: cuba_libre.id)
Dose.create(description:"1 slice", ingredient_id: lemon.id, cocktail_id: cuba_libre.id)


mojito = Cocktail.create(name: "Mojito")
mint_leaves = Ingredient.create(name: "mint leaves")
ice = Ingredient.create(name: "ice")
lime = Ingredient.create(name: "lime")
brown_sugar = Ingredient.create(name: "brown_sugar")
soda = Ingredient.create(name: "soda")
Dose.create(description: "2 units", ingredient_id: rhum.id, cocktail_id: mojito.id)
Dose.create(description: "2 units", ingredient_id: soda.id, cocktail_id: mojito.id)
Dose.create(description: "1 unit", ingredient_id: mint_leaves.id, cocktail_id: mojito.id)
Dose.create(description: "1 unit", ingredient_id: ice.id, cocktail_id: mojito.id)
Dose.create(description: "4 slices", ingredient_id: lime.id, cocktail_id: mojito.id)
Dose.create(description: "3 spoons", ingredient_id: brown_sugar.id, cocktail_id: mojito.id)



killer = Cocktail.create(name: "Killer")
vodka = Ingredient.create(name: "vodka")
Dose.create(description: "lots", ingredient_id: vodka.id, cocktail_id: killer.id)

