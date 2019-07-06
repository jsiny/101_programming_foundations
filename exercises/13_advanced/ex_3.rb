matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

def transpose(matrix)
  first_column = []
  second_column = []
  third_column = []

  matrix.each do |row|
    first_column << row[0]
    second_column << row[1]
    third_column << row[2]
  end

  [first_column, second_column, third_column]
end

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
