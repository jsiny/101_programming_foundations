# Write a method that takes one argument (a positive integer) and returns
# a list of the digits in the number.

# input:
#   a positive integer

# output:
#   an array of integers

# Clarifying questions:
#   What happens if the argument is 0?
#   Do I need to validate that the input given is a positive integer?

# Algorithm:
#   The program reads the given integer and converts it to a string
#   The string is then split through each character
#   The array of strings is converted into an array of integers

def digit_list(int)
  int.to_s.split('').map(&:to_i)
end

# Examples:

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
puts digit_list(0) == [0]                     # => true