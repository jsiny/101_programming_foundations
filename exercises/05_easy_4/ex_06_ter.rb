def running_total(arr)
  sum = 0
  arr.map { |n| sum += n }
end

def running_total_3(arr)
  arr.map.with_index { |_, i| arr[0..i].inject(:+) }
end

# Further Exploration

def running_total_1(arr)
  sum = 0
  arr.each_with_object([]) { |n, ary| ary << sum += n }
end

def running_total_2(arr)
  arr.inject([]) { |acc, elem| acc << elem + (acc.last || 0) }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
