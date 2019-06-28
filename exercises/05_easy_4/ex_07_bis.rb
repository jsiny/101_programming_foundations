DIGITS = {  '1' => 1,
            '2' => 2,
            '3' => 3,
            '4' => 4,
            '5' => 5,
            '6' => 6,
            '7' => 7,
            '8' => 8,
            '9' => 9,
            '0' => 0 }.freeze

def string_to_integer(string)
  integer = 0
  string.chars.reverse.each_with_index do |string_digit, index|
    integer += DIGITS[string_digit] * (10**index)
  end
  integer
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
