def fibonacci(n)
  first = 1
  last = 1
  3.upto(n) do
    first, last = [last, first + last]
  end
  last
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(100) == 354_224_848_179_261_915_075
p fibonacci(100_001)
