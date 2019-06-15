# Input
# - 2 arrays

# Output
# - a new array
# - that contains all of the values from the argument arrays
# - without duplication (uniq!)

def merge(arr1, arr2)
  arr1 | arr2
end

arr1 = [1, 2, 3]
arr2 = [3, 4, 5]

result = merge(arr1, arr2)
p arr1, arr2, result
