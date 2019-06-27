def multiply(a, b)
  a * b
end

def square(n)
  multiply(n, n)
end

p square(5) == 25
p square(-8) == 64

# Further Exploration

def power(num, power)
  multiply(num, num) * (num**(power - 2))
end

p power(5, 2) == 25
p power(4, 3) == 64
p power(10, 4) == 10_000
p power(12, 5) == 248_832
