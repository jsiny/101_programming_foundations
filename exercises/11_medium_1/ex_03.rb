def rotate_array(arr)
  arr[1..-1] << arr[0]
end

def rotate_rightmost_digits(digits_arr, n)
  digits_arr[-n..-1] = rotate_array(digits_arr[-n..-1])
  digits_arr
end

def max_rotation(num)
  current_array = num.digits.reverse
  n = current_array.size
  result = []

  current_array.size.times do
    current_array = rotate_rightmost_digits(current_array[-n..-1], n)
    n -= 1
    result << current_array.first
  end

  result.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
