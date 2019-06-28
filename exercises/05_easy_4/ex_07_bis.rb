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
  number_of_digits = 1
  string.chars.reverse.each do |string_digit|
    integer += DIGITS[string_digit] * number_of_digits
    number_of_digits *= 10
  end
  integer
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
