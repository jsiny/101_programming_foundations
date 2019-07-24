DIGITS = %w(0 1 2 3 4 5 6 7 8 9).freeze

def integer_to_string(int)
  # int.digits.reverse.join
  string = ''

  loop do
    int, remainder = int.divmod(10)
    string.prepend(DIGITS[remainder])
    break if int.zero?
  end

  string
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
