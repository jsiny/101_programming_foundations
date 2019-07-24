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

def string_to_integer(str)
  int = 0
  str.chars.reverse.each_with_index { |n, i| int += DIGITS[n] * 10**i }
  int
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
