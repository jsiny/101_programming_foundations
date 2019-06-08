def reverse(array)
  mirror = Array.new(array.size)
  left_idx = 0
  right_idx = -1

  while left_idx < array.size
    mirror[right_idx] = array[left_idx]
    left_idx += 1
    right_idx -= 1
  end

  mirror
end

arr = [1, 2, 3, 4, 5]
p result = reverse(arr)
p arr
p arr.object_id != result.object_id

# Another quicker method

def reverse_2(array)
  mirror = []
  array.reverse_each { |n| mirror << n }
  mirror
end

arr = [1, 2, 3, 4]
p result = reverse_2(arr)
p arr
p arr.object_id != result.object_id
