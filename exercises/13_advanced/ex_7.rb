# def merge(arr1, arr2)
#   result = []
#   idx1 = 0
#   idx2 = 0

#   loop do
#     if arr1[idx1].nil? || arr2[idx2].nil?

#       break if arr1[idx1].nil? && arr2[idx2].nil?

#       if arr1[idx1].nil?
#         result << arr2[idx2]
#         idx2 += 1

#       else
#         result << arr1[idx1]
#         idx1 += 1

#       end
#     elsif arr1[idx1] < arr2[idx2]
#       result << arr1[idx1]
#       idx1 += 1

#     else
#       result << arr2[idx2]
#       idx2 += 1

#     end
#     break if idx1 == 3 && idx2 == 3
#   end
#   result
# end

# Much more beautiful version

def merge(arr1, arr2)
  idx2 = 0
  result = []

  arr1.each do |value|
    while idx2 < arr2.size && arr2[idx2] <= value
      result << arr2[idx2]
      idx2 += 1
    end
    result << value
  end

  result.concat(arr2[idx2..-1])
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
