a = 2
b = [5, 8]
arr = [a, b]      # arr => [2, [5, 8]]

arr[0] += 2       # arr => [4, [5, 8]]
arr[1][0] -= a    # arr => [4, [3, 8]]

p a               # 2
p b               # [3, 8]

# The code `arr[0] += 2` modifies the array, not `a`.
# In effect, we are assigning a new object at that index of the array, so that
# instead of containing `a`, `arr[0]` now contains 4.

# The value of `b` did change because `b` is an array, and we are modifying
# that array by assigning a new value at index `0` of that array.
