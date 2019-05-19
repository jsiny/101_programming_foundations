# Write a method that takes one argument, an array containing integers,
# and returns the average of all numbers in the array. 
# The array will never be empty and the numbers will always be positive
# integers.

# input:
#   - an array of integers
#   - the array is never empty
#   - integers >= 0

# output:
#   - an integer

# Clarifying questions:
#   - Do I need to take care of bad inputs? (strings, integers, etc.)
#   => I'll assume I don't have to.
#   - I'll also assume that I don't need to check for the two requirements
#   in the wording (empty array and negative integers)
#   - What if an integer is equal to 0 ? No change.

# Data Structure
#   input: array of integers
#   output: integer

# Algorithm:
#   - First, let's take the length of the input array
#   - Second, let's sum the array
#   - Third, let's divide this sum by the array's length

def average(array)
  array.sum.to_f / array.length
end



# Examples:

puts average([1, 5, 87, 45, 8, 8])      == 25.666666666666668
puts average([9, 47, 23, 95, 16, 52])   == 40.333333333333336
puts average([5, 145, 0])               == 50
puts average([3, 87, 2])                == 30.666666666666668
# Should print true