# Algorithm
# - Initiate sum variable
# - Initiate results array
# - Iterate through the array
#   - sum += element
#   - include this new sum to the results array
# - Return results array

def running_total(array)
  sum = 0
  results = []
  array.each do |n|
    sum += n
    results << sum
  end
  results
end

# FURTHER EXPLORATION

# Map solution

def running_total(array)
  sum = 0
  array.map { |n| sum += n }
end

# Inject solution

def running_total(array)
  array.inject([]) { |sum, n| sum << n + (sum.last || 0) }
end

# Each with object solution

def running_total(array)
  sum = 0
  array.each_with_object([]) { |n, arr| arr << sum += n }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
