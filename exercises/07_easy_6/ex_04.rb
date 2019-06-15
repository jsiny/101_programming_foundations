def reverse!(array)
  left_idx = 0
  right_idx = -1

  loop do
    array[left_idx], array[right_idx] = array[right_idx], array[left_idx]
    p array

    left_idx += 1
    right_idx -= 1
    break if left_idx >= array.size / 2
  end
  array
end

arr = [1, 2, 3, 4, 5]
p result = reverse!(arr)
p arr
p arr.object_id == result.object_id
