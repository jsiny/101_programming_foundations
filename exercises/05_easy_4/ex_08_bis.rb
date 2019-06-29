DIGITS = {  '0' => 0,   '1' => 1,   '2' => 2,   '3' => 3,   '4' => 4,
            '5' => 5,   '6' => 6,   '7' => 7,   '8' => 8,   '9' => 9 }.freeze

def string_to_integer(string)
  integer = 0
  string.chars.reverse.each_with_index do |string_digit, index|
    integer += DIGITS[string_digit] * (10**index)
  end
  integer
end

p string_to_integer('4321') == 4321

def string_to_signed_integer(string)
  case string[0]
  when /[0-9]/ then   string_to_integer(string)
  when '+'     then   string_to_integer(string[1..-1])
  when '-'     then - string_to_integer(string[1..-1])
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

# Further Exploration

def string_to_signed_int(string)
  sign = string.slice!(0) if %w(+ -).include?(string[0])
  absolute_value = string_to_integer(string)
  sign == '-' ? (0 - absolute_value) : absolute_value
end

p string_to_signed_int('4321') == 4321
p string_to_signed_int('-570') == -570
p string_to_signed_int('+100') == 100
