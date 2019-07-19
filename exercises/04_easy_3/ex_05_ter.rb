def multiply(x, y)
  x * y
end

def square(x)
  multiply(x, x)
end

p square(5) == 25
p square(-8) == 64

# Further Exploration

def power(num, n)
  # num**n
  multiply(num, num) * (num**(n - 2))
end

p power(3, 0) == 1
p power(3, 1) == 3
p power(3, 2) == 9
p power(3, 3) == 27
p power(3, 4) == 81
p power(3, 5) == 243
