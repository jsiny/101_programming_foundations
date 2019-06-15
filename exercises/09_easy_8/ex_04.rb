def substrings_at_start(string)
  substrings = []
  0.upto(string.size - 1) { |index| substrings << string[0..index] }
  substrings
end

def substrings(string)
  total_substrings = []
  string.chars.each_with_index do |_, index|
    current_string = string[index..-1]
    total_substrings += substrings_at_start(current_string)
  end
  total_substrings
end

p substrings('abcde') == %w(
  a ab abc abcd abcde
  b bc bcd bcde
  c cd cde
  d de
  e
)

# Slightly different method

def substrings_2(string)
  total_substrings = []
  (0...string.size).each do |starting_index|
    current_string = string[starting_index..-1]
    total_substrings += substrings_at_start(current_string)
  end
  total_substrings
end

p substrings('abcde')
