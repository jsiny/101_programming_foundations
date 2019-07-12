def merge(arr1, arr2)
  idx2 = 0
  result = []

  arr1.each do |value|
    while idx2 < arr2.size && arr2[idx2] <= value
      result << arr2[idx2]
      idx2 += 1
    end
    result << value
  end

  result.concat(arr2[idx2..-1])
end

# arr1 = [[[9], [5]], [[7], [1]]]
# p arr1[0][0], arr1[0][1]
# res1 = merge(arr1[0][0], arr1[0][1]) # => [5, 9]
# res2 =  merge(arr1[1][0], arr1[1][1]) # +> [1, 7]

# arr2 = [res1, res2]

# p arr2
# # arr = [[5, 9], [1, 7]]
# p merge(arr2[0], arr2[1])

# arr3 = [[[6], [2]], [[7], [[1], [4]]]]
# p merge(arr3[1][1][0], arr3[1][1][1]) # => [1, 4]
# p merge(arr3[1][0], [1, 4]) # [1, 7, 4]
# p merge(arr3[0][0], arr3[0][1]) # [2, 6]
# p merge([2, 6], [1, 7, 4]) # [1, 2, 6, 7, 4]

require 'pry'

def merge_sort(array)
  binding.pry
  return array if array.size == 1

  middle = array.size / 2
  sub_array1 = array[0...middle]
  sub_array2 = array[middle..-1]

  binding.pry
  sub_array1, sub_array2 = merge_sort(sub_array1), merge_sort(sub_array2)
  binding.pry
  merge(sub_array1, sub_array2)
  binding.pry
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) ==
  %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) ==
  [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
