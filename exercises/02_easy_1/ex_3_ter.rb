def digit_list(num)
  num.digits.reverse
end

puts digit_list(12_345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375_290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]
