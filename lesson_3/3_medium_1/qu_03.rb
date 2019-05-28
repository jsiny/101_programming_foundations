# Question 3

# My ugly solution

def factors(number)
  divisor = number
  factors = []
  loop do
    return 'Invalid input: number must be strictly positive' if number <= 0
    factors << number / divisor if (number % divisor).zero?
    divisor -= 1
    break if divisor.zero?
  end
  factors
end

# Nicer solutions

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if (number % divisor).zero?
    divisor -= 1
  end
  factors
end

p factors(45)
p factors(3)
p factors(152)
p factors(0)
p factors(-15)

# Bonus 1

# The purpose of `number % divisor == 0` is to find if a certain integer
# is a divisor of the input number. If this modulo operation returns 0,
# this means that the integer is a divisor and therefore should be added
# to the factors array.

# Bonus 2

# The `factors` line is used to return the factors array at the end of the
# method.
