def size_first_array(array)
  if array.size.even?
    array.size / 2 - 1
  else
    array.size / 2
  end
end

def add_to_array(result_array, input_array, index, size)
  while index <= size
    result_array << input_array[index]
    index += 1
  end
  result_array
end

def halvsies(array)
  arr1 = []
  arr2 = []
  index = 0
  size_arr1 = size_first_array(array)

  arr1 = add_to_array(arr1, array, index, size_arr1)
  index += arr1.size
  arr2 = add_to_array(arr2, array, index, array.size - 1)

  [arr1, arr2]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

# Better solution

def halvsies_2(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end

p halvsies_2([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies_2([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies_2([5]) == [[5], []]
p halvsies_2([]) == [[], []]
