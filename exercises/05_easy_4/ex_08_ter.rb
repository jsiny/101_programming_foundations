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

def string_to_signed_integer(str)
  case str[0]
  when '-' then - string_to_integer(str[1..-1])
  when '+' then   string_to_integer(str[1..-1])
  else            string_to_integer(str)
  end
end

# Further Exploration

def string_to_signed_integer_1(str)
  sign = str.slice!(0) if str.start_with?('+', '-')
  sign == '-' ? - string_to_integer(str) : string_to_integer(str)
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
