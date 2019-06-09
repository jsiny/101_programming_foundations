def include?(array, search)
  array.each { |n| return true if n == search }
  false
end

p include?([1, 2, 3, 4, 5], 3) == true
p include?([1, 2, 3, 4, 5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

# Add quicker solution

def include_2?(array, search)
  !!array.find_index(search)
end

p include_2?([1, 2, 3, 4, 5], 3) == true
p include_2?([1, 2, 3, 4, 5], 6) == false
p include_2?([], 3) == false
p include_2?([nil], nil) == true
p include_2?([], nil) == false
