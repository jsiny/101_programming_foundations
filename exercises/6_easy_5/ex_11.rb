def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

word = 'Hello World'
p spin_me(word)   # => "olleH dlroW"
p word            # => "Hello World"

# This method returns a different object.
# The reason is that we transform the initial string into an array
# and then joins back this array into a string.
# Therefore, the modifications that happen only happen onto the array, with
# no impact onto the original string.
# If we were to use an array of words instead of a string, the method would
# return the same mutated object.
