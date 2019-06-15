def uppercase?(string)
  string.upcase == string
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

# Further Exploration

# I think returning `true` for an empty string makes sense because:
# * A method should only have one purpose (and here it is to check whether
# a string is uppercase, not if the string is empty)
# * Returning `false` for an empty string would probably be misleading because
# it would be interpreted as "string with lowercase chars" instead of "empty"
