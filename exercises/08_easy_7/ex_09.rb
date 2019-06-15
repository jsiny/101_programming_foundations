def multiply_all_pairs(arr1, arr2)
  product = []

  arr1.each do |x|
    arr2.each do |y|
      product << x * y
    end
  end

  product.sort
end

p multiply_all_pairs([1, 2], [2, 3, 4]) == [2, 3, 4, 4, 6, 8]
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# Shorter method

def multiply_all_pairs_2(arr1, arr2)
  arr1.product(arr2).map { |x, y| x * y }.sort
end

p multiply_all_pairs_2([1, 2], [2, 3, 4]) == [2, 3, 4, 4, 6, 8]
p multiply_all_pairs_2([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
