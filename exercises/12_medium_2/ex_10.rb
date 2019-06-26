def sum_square_difference(n)
  square_of_sum(n) - sum_of_squares(n)
end

def square_of_sum(n)
  (1..n).sum**2
end

def sum_of_squares(n)
  (1..n).map { |i| i**2 }.sum
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1).zero?
p sum_square_difference(100) == 25_164_150
