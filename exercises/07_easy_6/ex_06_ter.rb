def merge(arr1, arr2)
  arr1 | arr2
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# Without |

def merge_1(arr1, arr2)
  (arr1 + arr2).flatten.uniq
end

p merge_1([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
