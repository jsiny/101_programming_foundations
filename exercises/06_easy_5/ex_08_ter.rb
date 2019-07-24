ALPHABET = %w(zero one two three four five six seven eight nine ten eleven
              twelve thirteen fourteen fifteen sixteen seventeen eighteen
              nineteen).freeze

def alphabetic_number_sort(numbers)
  numbers.sort_by { |i| ALPHABET[i] }
end

# Further Exploration

def alphabetic_number_sort_1(numbers)
  numbers.sort { |i, j| ALPHABET[i] <=> ALPHABET[j] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
