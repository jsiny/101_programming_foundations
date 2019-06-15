arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

result = arr.sort_by do |subarr|
  subarr.select(&:odd?)
end

p result
