# Write a method that counts the number of occurrences of each element
# in a given array.
# The words in the array are case-sensitive. 
# Once counted, print each element alongside the number of occurrences.

# Input:
#   An array of strings

# Output:
#   Strings

# Clarifying questions:
#   What about case sensitivity? => Yes this method is case sensitive
#   What should be returned in case of an empty array?
#   Should I assume that the array is not empty?
#   Should I assume that the array only contains string values?

# Data Structure:
#   The output will probably need to be held by a hash
#   The string as the key, and the amount of this string as the value

# Algorithm:
#   - We initiate a results hash variable
#   - The program loops through the given array
#   - The program takes the first string and checks if this key already 
#   exists inside the results hash
#     - If it does: then we increment the value attached to this key
#     - If it doesn't: then we create this key and give it the value 1
#   - The string is removed from the initial array
#   - The new first string is taken through the loop
#   - The program loops through the results hash and prints the key-value
#   pairs

def count_occurrences(array)
  
  results = {}
  
  loop do
  
    word = array.shift
  
    if results.has_key?(word)
      results[word] += 1
    else
      results[word] = 1
    end
  
    break if array.empty?
  end
  
  results.each { |k,v| puts "#{k} => #{v}" }
end


# Example:

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck', 
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

# Expected output:
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2