def sum_of_sums(numbers)
  sum = 0
  numbers.each_with_index do |_, i|
    sum += numbers[0..i].inject(:+)
  end
  sum
end

p sum_of_sums([3, 5, 2]) == 3 + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == 1 + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # 36
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
