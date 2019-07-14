def sum(num)
  num.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# Different method

def sum_1(num)
  num.to_s.chars.map(&:to_i).inject(:+)
end

puts sum_1(123_456_789) == 45
