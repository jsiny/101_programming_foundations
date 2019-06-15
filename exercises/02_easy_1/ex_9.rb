# Write a method that takes one argument, a positive integer, and returns
# the sum of its digits.
# For a challenge, try writing this without any basic looping construct
# (while, until, loop and each)

# input
#   a positive integer

# output
#   a positive integer

# Clarifying questions:
#   - I assume that I won't have to check whether the input is indeed
#   an integer or a positive integer
#   - What happens if the integer is 0? The output is 0

# Data structure
#   input: an integer converted into an array
#   output: an integer

# Algorithm
#   - The program convers the input integer into a string
#   - This string is split by characters (chars)
#   - Then we convert this array of strings into an array of integers
#   - The array is summed

def sum(n)
  
  digits = n.to_s.chars
  digits.map!(&:to_i)
  digits.sum
  
end


# Examples
puts sum(23)          == 5
puts sum(496)         == 19
puts sum(123_456_789) == 45
puts sum(0)           == 0
# Should print true