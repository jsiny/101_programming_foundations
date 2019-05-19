# Write a method that takes two arguments, a positive integer and a 
# boolean, and calculates the bonus for a given salary.
# If the boolean is true, the bonus sould be half the salary. If the boolean
# is false, the bonus should be 0.

# inputs
#   - a positive integer (the salary)
#   - a boolean

# ouput
#   - a positive integer (the bonus)
#   - can be 0

# Clarifications
#   - I'll assume the input integer is always strictly positive
#   - I'll also assume that the parameters are always given, and are of
#   the right nature

# Data structure
#   input: both arguments will be stored independently
#   ouput: an integer

# Algorithm
#   - The method receives both arguments
#   - If boolean = false, then bonus = 0.
#   - If boolean = true, then bonus = salary / 2

def calculate_bonus(salary, bonus)
  bonus ? salary / 2 : 0
end


# Examples
puts calculate_bonus(2800, true)    == 1400
puts calculate_bonus(1000, false)   == 0
puts calculate_bonus(50000, true)   == 25000