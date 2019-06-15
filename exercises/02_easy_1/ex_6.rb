# Write a method that takes one argument, a string containing one or more words,
# and returns the given string with all five or more letter words reversed.
# Each string will consist of only letters and spaces.
# Spaces should be included only when more than one word is present.

# input
#   a string:
#     - words: 1 to many
#     - a reverse word is min 5 letters
#     - only letters and spaces
#     - no punctuation

# output
#   a string:
#     - only letters and spaces
#     - spaces should be included only if words > 1

# Clarifying questions:
#   - Should I keep the uppercase and lowercase letters? => Yes
#   - Should I check for the input type? => I'll assume I have to
#   - What should I do if the string's length is below 5?
#   - What should I do if the input includes some punctuation? => I'll
#   assume I won't have to handle that case.

# Data Structure
#   input: a string, split into an array
#   output: an array joined into a string

# Algorithm
#   - The program checks the input class and raise an error message in case
#   the input is not a string
#   - Then we split the string into an array containing the given words
#   - Then, we iterate over the array:
#     - If the word's length is from 1 to 4, we keep it as it is
#     - If the word's length is 5+, we reverse the characters
#   - The resulting array is joined with 1 space between each word and
#   returned


def reverse_words(string)
  
  if string.class == String
    
    array = string.split
    result = array.map do |word|
      
      word.reverse! if word.length >= 5
      word

    end

    result.join(' ') 
  
  else
    "Strings only!"
  end
end


# Examples

puts reverse_words('Professional')          == "lanoisseforP"
puts reverse_words('Walk around the block') == "Walk dnuora the kcolb"
puts reverse_words('Launch School')         == "hcnuaL loohcS"
puts reverse_words('hey')                   == "hey"
puts reverse_words('')                      == ''
puts reverse_words("hey I'm busy")          == "hey I'm busy"
puts reverse_words(5)                       == "Strings only!"
puts reverse_words(["hello", "world"])      == "Strings only!"

