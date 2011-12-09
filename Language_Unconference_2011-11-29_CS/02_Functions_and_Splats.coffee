# Uncoffee 02 - More about functions and splats
		
# functions can have default values
greet = (name = 'Anonymous Coward') -> 
	console.log "Hi #{name}!"											# Yes, that's string interpolation 
greet 'everybody'		
greet								# huh? nothing happens
console.log greet		# ah, omitting arguments AND paranthesis passes the reference to the function
greet()							# that's better


# functions can return multiple values
splatter = ->
	['A', 'bunch', 'of', 'returned', 'strings']	# - HEY! That's cheating, you just return an array of strings!
console.log splatter()

[first, middle..., last] = splatter()					# - True, but that's what 'destructuring assignment' and 'splats' are for.
console.log first
console.log middle
console.log last


# functions can use splats as parameters
last_arg = (almost_all..., last) -> last
console.log last_arg()
console.log last_arg('only one argument')						# splats aren't that greedy
console.log last_arg('This', 'is', 'the', 'last')

