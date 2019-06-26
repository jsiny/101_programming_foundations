def featured(num)
  num += 1
  loop do
    break if num > 9_876_543_210
    return num if num_is_featured?(num)
    num += 1
  end

  'There is no possible number that fulfills those requirements'
end

def num_is_featured?(num)
  num.odd? && (num % 7).zero? && num.digits.uniq == num.digits
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999)
# -> There is no possible number that fulfills those requirements
