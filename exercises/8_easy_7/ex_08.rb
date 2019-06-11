def multiply_list(arr1, arr2)
  result = []
  arr1.each_with_index { |n, i| result << n * arr2[i] }
  result
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# Further Exploration

def multiply_list_2(arr1, arr2)
  arr1.zip(arr2).map { |arr| arr.inject(:*) }
end

p multiply_list_2([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
