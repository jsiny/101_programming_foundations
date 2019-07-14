def average(arr)
  arr.inject(:+).to_f / arr.size # easier: arr.sum
end

puts average([1, 5, 87, 45, 8, 8]) #== 25
puts average([9, 47, 23, 95, 16, 52]) #== 40
