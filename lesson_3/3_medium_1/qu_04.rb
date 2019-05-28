# Question 4

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# Both methods have the same return values.

# However, the << operator mutated the caller.
# This means that the array passed to `rolling_buffer1` will be permanently
# changed.
# Instead, the `+` operator leaves the original object untouched.
