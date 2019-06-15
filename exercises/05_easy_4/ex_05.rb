# Algorithm
# - iterate through the range
#   - check whether the number is divisible by 3 or 5
#   - if yes, add it to the results array
# - sum the results array

def multisum(max)
  divisibles = []

  (1..max).each do |n|
    divisibles << n if (n % 3).zero? || (n % 5).zero?
  end
  divisibles.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234_168
