# Write a method that takes one argument, a positive integer, and returns a
# string of alternating 1s and 0s, always starting with 1.
# The length of the string should match the given integer.

# input
#   a positive integer

# output
#   a string of 1s and 0s
#   the string's length == the integer given

# Clarifying question:
#   - What should happen if the input is 0? => I'll assume this prints ''
#   - Do I need to check for a positive integer? => I'll assume I don't
#   - Do I need to check for the Integer class of the input? => I'll assume no

# Data structure
#   input: an integer
#   output: a string

# Algorithm
#   - The program receives the integer given
#   - We initiate an output array
#   - Then we loop as many times as the integer given
#     - if the index is even, push 1 to the array
#     - if the index is odd, push 0
#   - Join the output array into a string

def stringy(num)
  
  numbers = []

  num.times do |index|
    index.even? ? numbers << 1 : numbers << 0 
  end
  
  numbers.join
end


# Examples
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(0) == ''
# Should all print true