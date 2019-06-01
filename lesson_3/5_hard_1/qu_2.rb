greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings          #  => {:a=>"hi there"}

# informal_greetings is a new variable that points to the object referenced
# by the greetings hash, key = :a

# Then, this value is mutated with String#<<, which also affects the greetings
# hash as they both refer to the same object.

# Therefore, when the hash is printed, the new value is 'hi there'
