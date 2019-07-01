def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(number, n)
  digits = number.digits.reverse
  digits[-n..-1] = rotate_array(digits[-n..-1])
  digits.join.to_i
end

def max_rotation(number)
  size = number.to_s.size

  while size > 0
    number = rotate_rightmost_digits(number, size)
    size -= 1
  end

  number
end

p max_rotation(735_291) == 321_579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

# Further Exploration

def max_rotation_1(number)
  result = number.to_s.chars
  result.size.times { |digit| result << result.delete_at(digit) }
  result.join('').to_i
end

p max_rotation_1(735_291) == 321_579
p max_rotation_1(3) == 3
p max_rotation_1(35) == 53
p max_rotation_1(105) == 15 # the leading zero gets dropped
p max_rotation_1(8_703_529_146) == 7_321_609_845
