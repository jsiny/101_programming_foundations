def rotate_array(arr)
  arr_copy = arr.dup
  arr_copy << arr_copy.shift
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(%w(a b c)) == %w(b c a)
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# Simpler method

def rotate_array_2(arr)
  arr[1..-1] << arr[0]
end

p rotate_array_2(%w(a b c)) == %w(b c a)
y = [1, 2, 3, 4]
p rotate_array_2(y) == [2, 3, 4, 1] # => true
p y == [1, 2, 3, 4] # => true
