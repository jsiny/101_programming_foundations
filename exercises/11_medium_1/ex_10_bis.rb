def fibonacci(n)
  return 1 if n <= 2
  first = 1
  last = 1
  (n - 2).times { last, first = first + last, last }
  last
end

def fibonacci_last(n)
  fibonacci(n).to_s[-1].to_i
end

p fibonacci_last(20)          == 5
p fibonacci_last(100)         == 5
p fibonacci_last(100_001)     == 1
p fibonacci_last(1_000_007)   == 3
p fibonacci_last(123_456_789) == 4

# More efficient method

def fibonacci_last_2(n)
  last2 = [1, 1]
  3.upto(n) { last2[0], last2[1] = last2[1], (last2[0] + last2[1]) % 10 }
  last2.last
end

p fibonacci_last_2(20)          == 5
p fibonacci_last_2(100)         == 5
p fibonacci_last_2(100_001)     == 1
p fibonacci_last_2(1_000_007)   == 3
p fibonacci_last_2(123_456_789) == 4
