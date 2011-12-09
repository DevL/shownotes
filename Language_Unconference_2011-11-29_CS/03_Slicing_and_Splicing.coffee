# Uncoffee 03 - A range of operations

# CoffeeScript offers the whole range of fun:

# ...we can slice...
words = ['lorem', 'ipsum', 'dolor', 'sit', 'amet']

console.log words[0..2]
console.log words[0...2]

console.log words[0..]
console.log words[0...]

console.log words[1..-1]
console.log words[1...-1]

words = ['lorem', 'ipsum', 'dolor', 'sit', 'amet']
console.log words[3..3]
console.log words[-2..-2]

console.log words[3...3]
console.log words[-2...-2]


# ...we can splice...
chars = ['a' ,'b', 'c']
chars[0...0] = ['A', 'Z']
console.log chars

chars[-1..-1] = 'C'
console.log chars
