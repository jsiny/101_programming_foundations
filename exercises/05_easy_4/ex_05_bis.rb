require 'pry'

def multisum_1(num)
  sum = 0
  1.upto(num) do |i|
    sum += i if (i % 3).zero? || (i % 5).zero?
  end
  sum
end

p multisum_1(3) == 3
p multisum_1(5) == 8
p multisum_1(10) == 33
p multisum_1(1000) == 234_168

# Further Exploration

def multisum(num)
  (1..num).select { |i| (i % 3).zero? || (i % 5).zero? }.reduce(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234_168
