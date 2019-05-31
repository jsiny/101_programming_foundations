# Write a method that takes a string with one or more space separated words
# and returns a hash that shows the number of words of different sizes.
# Words consist of any string of characters that do not include a space.

# Input
# > A sentence

# Output
# > A hash with :
#   > integers as keys: the word's lengths
#   > integers as values: the amount of words with this length

# Algorithm
# - Create a results hash
# - Split the sentence according to spaces => array of words
# - Iterate through the words:
#   > if hash.has_key?(Word.size)
#     > increment by 1 the amount
#   > else:
#     > create a new key-value pair: hash[size] = 1
# - Return the hash

def word_sizes(sentence)
  results = Hash.new(0)
  sentence.split.each { |word| results[word.size] += 1 }
  results
end

# Examples
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5,
                                                                6 => 1,
                                                                7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
