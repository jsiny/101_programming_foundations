def fibonacci(n)
  return 1 if n <= 2
  first = 1
  last = 1
  (n - 2).times { last, first = first + last, last }
  last
end

p fibonacci(1) == 1
p fibonacci(3) == 2
p fibonacci(5) == 5
p fibonacci(20) == 6765
p fibonacci(100) == 354_224_848_179_261_915_075
