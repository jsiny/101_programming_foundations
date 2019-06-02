# QUESTION 3

# PART A

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"       # one
puts "two is: #{two}"       # two
puts "three is: #{three}"   # three

# Explanations:
# Reassignment is not mutative.
# Therefore, the reassignment that happened inside the method
# definition did not impact the outer scope variables
# one, two and three.

