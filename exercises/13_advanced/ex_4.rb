def transpose(matrix)
  result = []
  max_column_index = matrix[0].size
  max_row_index = matrix.size

  (0...max_column_index).each do |col_idx|
    new_row = (0...max_row_index).map { |row_idx| matrix[row_idx][col_idx] }
    result << new_row
  end

  result
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
