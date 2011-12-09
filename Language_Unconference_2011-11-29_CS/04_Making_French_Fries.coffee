# Uncoffee 04 - Making French Fries (comprehensions)

# ...we can even make french fries with an array comprehension.
ingredients = ['potato', 'potato', 'potato']
console.log 'french fries' for ingredient in ingredients		
console.log ('french fries' for ingredient in ingredients)


# We could do with a burger to our french fries
cook = (ingredient) ->
	'a slice of ' + ingredient

basic_burger_ingredients = ['bread', 'tomato', 'cheese', 'meat', 'bread']
console.log (cook ingredient for ingredient in basic_burger_ingredients)																# yummy
console.log (cook ingredient for ingredient in basic_burger_ingredients when ingredient isnt 'meat')		# vegetarian edition

crazy_burger_ingredients = ['bread', [1, 2], {brains: 'plenty'}, 3]
console.log (cook ingredient for ingredient in crazy_burger_ingredients)	# that's a weird burger...
console.log (cook ingredient for ingredient in crazy_burger_ingredients when typeof ingredient is 'string')	# better


# Too much unhealthy food around here, let's sing a song using object comprehension
sallad_song =
	lettuce: 'sliced'
	onion: 'diced'
	wit: 'sharp as a knife'

for stuff, status of sallad_song
	console.log "my #{stuff} is #{status}"
