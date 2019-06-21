def fibonacci_last(n)
  last2 = [1, 1]
  3.upto(n) do
    last2 = [last2.last, (last2.first + last2.last) % 10]
  end
  last2.last
end

p fibonacci_last(15)          # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)          # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)         # -> 5 (the 100th Fibonacci number is ...61915075)
p fibonacci_last(100_001)     # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007)   # -> 3 (this is a 208989 digit number)
p fibonacci_last(123_456_789) # -> 4
