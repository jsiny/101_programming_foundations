def multisum(n)
  (1..n).select { |i| i if (i % 3).zero? || (i % 5).zero? }.inject(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234_168
