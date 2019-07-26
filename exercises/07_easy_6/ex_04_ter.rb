def reverse!(arr)
  copy = arr.dup
  counter = arr.size - 1

  copy.each do |el|
    arr[counter] = el
    counter -= 1
  end

  arr
end

list = [1, 2, 3, 4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = []
p reverse!(list) == []
p list == []
