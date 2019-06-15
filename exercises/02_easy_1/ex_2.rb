# Write a method that takes one integer argument, which may be positive, 
# negative or zero.
# This method returns `true` if the number's absolute value is odd. You may
# assume that the argument is a valid integer value.
# You're not allowed to use #odd? or #even? in your solution.

# input: 
#   one integer: 0 or > 0 or < 0

# output:
#   prints a boolean

# Clarifying questions:
#   Is 0 odd? => No according to the examples
#   Do I need to validate the input's type? => No according to the wording

# Data Structures:
#   Input: an integer
#   Output: a boolean

# Algorithm:
#   - The program takes the integer and uses the modulo operator 
#   to return the remainder after dividing this integer by 2
#   - If this remainder is 1, then the integer is odd, and the program 
#   returns true
#   - Else, the integer is even and the program returns false

def is_odd?(integer)
  integer % 2 == 1
end

# Examples
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

puts "-------------"

# Further Exploration

def is_odd_2?(integer)
  integer.remainder(2).abs == 1
end

# Examples

puts is_odd_2?(2)    # => false
puts is_odd_2?(5)    # => true
puts is_odd_2?(-17)  # => true
puts is_odd_2?(-8)   # => false
puts is_odd_2?(0)    # => false
puts is_odd_2?(7)    # => true