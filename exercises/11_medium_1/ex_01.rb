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

# Further Exploration

def rotate_string(string)
  rotate_array_2(string.chars).join
end

p rotate_string('Hello') == 'elloH'
p rotate_string('how you doin?') == 'ow you doin?h'

def rotate_integer(integer)
  rotate_array_2(integer.digits.reverse).join.to_i
end

p rotate_integer(1234) == 2341
p rotate_integer(456_789) == 567_894

def rotate(object)
  return rotate_array_2(object) if object.class == Array
  return rotate_integer(object) if object.class == Integer
  return rotate_string(object)  if object.class == String
  puts "I'm sorry but I can't rotate that object"
end

puts rotate([1, 2, 3])
puts rotate('hello darkness')
puts rotate(987)
puts rotate(a: 'ant', b: 'bear')
