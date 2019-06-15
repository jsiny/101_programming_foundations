arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

result = arr.map do |subarr|
  subarr.select { |num| (num % 3).zero? }
end

p result
p arr
