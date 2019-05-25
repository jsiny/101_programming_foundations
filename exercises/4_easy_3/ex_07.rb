def oddities(array)
  result = []
  index = 0
  while index < array.length
    result << array[index]
    index += 2
  end
  result
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

puts '-------------'

# Further Exploration

# Second way to solve this problem

def oddities(array)
  result = []
  count = 0
  array.each do |element|
    result << element if count.even?
    count += 1
  end
  result
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

puts '-------------'

# Third way to solve this problem

def oddities(array)
  result = []
  array.select do |element|
    result << element if array.index(element).even?
  end
  result
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
