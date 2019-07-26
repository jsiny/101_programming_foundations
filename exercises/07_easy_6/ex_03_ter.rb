def fibonacci(n)
  return 1 if n < 3
  first = 1
  second = 1

  (n - 2).times do
    first, second = second, first + second
  end
  second
end

p fibonacci(1)
p fibonacci(3)
p fibonacci(5)
p fibonacci(7)
p fibonacci(10)

def find_fibonacci_index_by_length_1(length)
  i = 1
  loop do
    fib = fibonacci(i)
    break if fib.to_s.size >= length
    i += 1
  end
  i
end

p find_fibonacci_index_by_length_1(2) == 7    # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length_1(3) == 12   # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length_1(10) == 45
p find_fibonacci_index_by_length_1(100) == 476
# p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10_000) == 47_847

# initialize var first, second (1) and index at 2
# loop
# first, second = second, first + second
# break if second.to_s.size >= length
# else index += 1
# index

def find_fibonacci_index_by_length(length)
  first = 1
  second = 1
  index = 3

  loop do
    first, second = second, first + second
    break if second.to_s.size >= length
    index += 1
  end

  index
end

p find_fibonacci_index_by_length(2) == 7    # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12   # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10_000) == 47_847
