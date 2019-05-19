# Write a method that takes one argument, a string, and returns a new
# string with the words in reverse order.

# input:
#   a string

# output:
#   a string

# Clarifying questions?
#   What happens if the string is empty? => We return an empty string
#   Should I check for the input type? => I'll assume I have to
#   Should I keep lower and upper cases letters even though it doesn't
#   match normal grammar? => From the examples: yes.
#   What should I do with punctuation? Is it part of the words or should
#   be treated separately?

# Data Structure
#   input: I'll transform the input into an array
#   output: array of strings joined

# Algorithm
#   The method checks whether the input's class is String
#   If it isn't, the method returns a warning
#   If it is, the string is split based on spaces and put into an array
#   The array is then printed from last to first index

def reverse_sentence(string)
  
  if string.class == String
    string.split.reverse.join(' ')
  else
    "Please input a String"
  end
end




# Examples:

puts reverse_sentence('')                     == ''
puts reverse_sentence('Hello World')          == 'World Hello'
puts reverse_sentence('Reverse these words')  == 'words these Reverse'
puts reverse_sentence(5)                      == "Please input a String"
puts reverse_sentence(true)                   == "Please input a String"
puts reverse_sentence("Hello.World.")         == "Hello.World."
puts reverse_sentence("Hello. hello world")   == "world hello Hello."
# All tests should print true