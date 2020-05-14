Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

# Cocktails
mojito = Cocktail.create(name: 'mojito')

# Ingredients
lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
mint_leaves = Ingredient.create(name: "mint leaves")

# Doses

dose1_mojito = Dose.create(ingredient: mint_leaves, description: '5g of mint leaves', cocktail: mojito)
dose2_mojito = Dose.create(ingredient: lemon, description: '2 lemon', cocktail: mojito)

# Display in seed
puts "#{lemon.name} created"
puts "#{ice.name} created"
puts "#{mint_leaves.name} created"
puts "#{mojito.name} created"
