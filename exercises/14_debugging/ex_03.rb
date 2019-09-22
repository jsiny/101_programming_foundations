def valid_series?(nums)
  nums.count(&:odd?) == 3 && nums.sum == 47
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8]) == true
p valid_series?([1, 12, 2, 5, 16, 6])      == false
p valid_series?([28, 3, 4, 7, 9, 14])      == false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3]) == true
p valid_series?([10, 6, 19, 2, 6, 4])      == false
