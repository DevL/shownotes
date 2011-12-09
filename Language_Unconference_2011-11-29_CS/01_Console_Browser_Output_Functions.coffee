# Uncoffee 01 - Console and browser output plus a little about functions

# use the console.log function to output text to the terminal
console.log 'Here, have some CoffeeScript!'


# but wait, what if we don't know for sure that we have a console? 
console?.log? "Only invoked if there's a 'console' with a 'log' function."


# great, but if we're running in a browser the console isn't really visible to end users...
if window?
	alert 'Stay alert!'
else
	console?.log? 'Stick to the console.'


# functions are objects (actually, objects are functions) and thus can be assigned
output = if window? then alert else console.log 	
output 'You will see this both in a browser and a terminal!'


# In the example above, we cannot use console?.log? as it would return true/false and not the function
# let's declare a function instead 
output = (message) ->
	if window?
		alert message
	else
		console?.log? message
output "This is visible in a browser and a terminal plus it will not fail if you don't have a console!"


# functions can be really short and to the point
greet_if_in_a_browser = -> alert "You're using a browser!" if window?

square = (x) -> x * x

square_if_a_number = (num) -> 
	(num * num) if typeof num == 'number'

console.log square_if_a_number 'a'

first_element = (array) -> array[0] if array == typeof 'array'
console.log first_element 





 # CAVEAT: This will not work...why? http://javascript.crockford.com/remedial.html




