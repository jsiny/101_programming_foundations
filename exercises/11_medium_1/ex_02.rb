def rotate_rightmost_digits(num, last_digit)
  i = - last_digit
  arr = num.digits.reverse
  arr << arr.delete_at(i)
  arr.join.to_i
end

p rotate_rightmost_digits(735_291, 1) == 735_291
p rotate_rightmost_digits(735_291, 2) == 735_219
p rotate_rightmost_digits(735_291, 3) == 735_912
p rotate_rightmost_digits(735_291, 4) == 732_915
p rotate_rightmost_digits(735_291, 5) == 752_913
p rotate_rightmost_digits(735_291, 6) == 352_917

# Method which uses rotate_array(arr)

def rotate_array(arr)
  arr[1..-1] << arr[0]
end

def rotate_rightmost_digits_2(num, n)
  all_digits = num.digits.reverse
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

p rotate_rightmost_digits_2(735_291, 1) == 735_291
p rotate_rightmost_digits_2(735_291, 2) == 735_219
p rotate_rightmost_digits_2(735_291, 3) == 735_912
p rotate_rightmost_digits_2(735_291, 4) == 732_915
p rotate_rightmost_digits_2(735_291, 5) == 752_913
p rotate_rightmost_digits_2(735_291, 6) == 352_917
