rhum = Ingredient.create(name: 'rhum')

mojito = Cocktail.create(name: "Mojito")

Dose.create(cocktail: mojito, ingredient: rhum, quantity: '5', unity: "cl")
