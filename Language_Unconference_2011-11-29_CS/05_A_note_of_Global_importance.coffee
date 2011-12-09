# Uncoffee 05 - A note of global importance (making things global)

class MyWorld
	root = global ? window		# "root = exports ? this" is more common, but does not work in the interactive shell at http://coffeescript.org/

	root.declare = (dominion) ->		# note the usage of 'root' here - we're creating a global function
		console.log "I'm the king of the #{dominion}!"

	declare 'the World'

class MiddleEarth
	declare = (dominion) -> 
		console.log "We have no king here in #{dominion}."
	
	declare 'the Shire'

class YourWorld
	declare 'Hill'
