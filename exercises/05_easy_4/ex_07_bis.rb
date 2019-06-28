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

# Further Exploration

HEX_TO_DECIMAL = {  '0' => 0,   '1' => 1,   '2' => 2,   '3' => 3,   '4' => 4,
                    '5' => 5,   '6' => 6,   '7' => 7,   '8' => 8,   '9' => 9,
                    'A' => 10,  'B' => 11,  'C' => 12,  'D' => 13,  'E' => 14,
                    'F' => 15 }.freeze

def hexadecimal_to_integer(hex_string)
  decimal_int = 0
  hex_string.chars.reverse.each_with_index do |hex_str, index|
    decimal_int += HEX_TO_DECIMAL[hex_str.upcase] * (16**index)
  end
  decimal_int
end

p hexadecimal_to_integer('10') == 16
p hexadecimal_to_integer('1a') == 26
p hexadecimal_to_integer('4D9f') == 19_871
# 4 * 16^3 + 13 * 16^2 + 9 * 16 + 15
