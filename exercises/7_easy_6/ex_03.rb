# FIBONACCI
# The first two numbers are 1
# Each subsequent number is the sum of the two previous numbers
# 1, 1, 2, 3, 5, 8, 13, 21...

# It takes 7 iterations to generate the first 2 digits number.
# Write a method that calculates and returns the index of the first Fibonacci
# number that has the number of digits specified as an argument. (The first
# Fibonacci number has index 1.)

# Input
# - An integer that represents the number of digits expected in the Fibonacci
# number

# Output
# - An integer that is the index of the first Fibonacci number that has the
# number of digits specified as an argument.

# Algorithm Fibonacci number
# - if i < 2, n = 1
# - else, n(i) = fibonacci(i-1) + fibonacci(i-2)
# - i += 1

# Algorithm
# - Given a digits_number
# - Index = 1
# - Loop
#   - Each iteration, compute n = fibonacci (index)
#   - break if n.digits.size = digits_number
#   - index += 1
# - Return the index

require 'pry'

def fibonacci(i)
  if i < 2
    1
  else
    fibonacci(i - 1) + fibonacci(i - 2)
  end
end

p fibonacci(1)
p fibonacci(2)
p fibonacci(3)
p fibonacci(5)
p fibonacci(9)

def find_fibonacci_index_by_length(length)
  index = 0
  loop do
    n = fibonacci(index)
    # binding.pry
    break if n.digits.size == length
    index += 1
  end
  index + 1
end


p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
