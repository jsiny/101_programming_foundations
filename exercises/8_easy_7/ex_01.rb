def interleave(arr1, arr2)
  merger = []
  arr1.each_with_index { |n, i| merger << n << arr2[i] }
  merger
end

p interleave([1, 2, 3], %w(a b c)) == [1, 'a', 2, 'b', 3, 'c']

# Further exploration

def interleave_2(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave_2([1, 2, 3], %w(a b c)) == [1, 'a', 2, 'b', 3, 'c']
