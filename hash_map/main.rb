require_relative 'hash_map'

test = HashMap.new

test.set('apple', 'red')
test.set('banana', 'yellow')
test.set('carrot', 'orange')
test.set('dog', 'brown')
test.set('elephant', 'gray')
test.set('frog', 'green')
test.set('grape', 'purple')
test.set('hat', 'black')
test.set('ice cream', 'white')
test.set('jacket', 'blue')
test.set('kite', 'pink')
test.set('lion', 'golden')
puts test.length

test.set('apple', 'red')
test.set('apple', 'green')
puts test.length

test.set('moon', 'silver')

test.set('apple', 'blue')    # Overwrite value
test.set('banana', 'yellow')
puts test.length

# Get values by key
puts test.get('moon')       # => "silver"
puts test.get('apple')      # => "blue" (overwritten)

# Check for existence
puts test.has?('moon')      # => true
puts test.has?('sun')       # => false

# Remove a key
puts test.remove('moon')    # => "silver"
puts test.has?('moon')      # => false

# Check the length
puts test.length            # => 12 (after removing 'moon')

# Clear all entries
test.clear                  # => 0
puts test.length      