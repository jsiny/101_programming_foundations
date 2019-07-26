def reverse(arr)
  copy = arr.dup
  counter = arr.size - 1

  arr.each do |el|
    copy[counter] = el
    counter -= 1
  end

  copy
end

p reverse([1, 2, 3, 4]) == [4, 3, 2, 1]    # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                           # => [1, 3, 2]
new_list = reverse(list)                   # => [2, 3, 1]
p list.object_id != new_list.object_id     # => true
p list == [1, 3, 2]                        # => true
p new_list == [2, 3, 1]                    # => true

# With inject

def reverse_with_inject(arr)
  arr.inject([]) { |acc, elem| acc.unshift(elem) }
end

list = [1, 3, 2]                           # => [1, 3, 2]
new_list = reverse_with_inject(list)       # => [2, 3, 1]
p list.object_id != new_list.object_id     # => true
p list == [1, 3, 2]                        # => true
p new_list == [2, 3, 1]                    # => true
