def oddities(array)
  odds = []
  array.each_with_index { |element, idx| odds << element if idx.even? }
  odds
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(%w(abc def)) == %w(abc)
p oddities([123]) == [123]
p oddities([]) == []

# Further Exploration

def oddityz(array)
  odds = []
  0.upto(array.size - 1) do |i|
    odds << array[i] if i.even?
  end
  odds
end

p oddityz([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddityz([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddityz(%w(abc def)) == %w(abc)
p oddityz([123]) == [123]
p oddityz([]) == []

def evenities(array)
  evens = []
  counter = 0
  until counter >= array.size
    evens << array[counter] if counter.odd?
    counter += 1
  end
  evens
end

p evenities([2, 3, 4, 5, 6]) == [3, 5]
p evenities([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
p evenities(%w(abc def)) == %w(def)
p evenities([123]) == []
p evenities([]) == []
