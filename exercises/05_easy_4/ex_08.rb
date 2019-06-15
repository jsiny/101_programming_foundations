MATCH = {
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  '0' => 0
}.freeze

# My long and complex solution

def negative?(string)
  true if string.start_with?('-')
end

def remove_sign(string)
  if MATCH.include?(string[0])
    string
  else
    string[1..-1]
  end
end

def string_to_signed_integer(string)
  without_sign = remove_sign(string)

  digits = without_sign.chars.map { |digit| MATCH[digit] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }

  negative?(string) ? (- value) : value
end

# The cleaner solution with a case statement

def string_to_integer(string)
  digits = string.chars.map { |digit| MATCH[digit] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def string_to_signed_integer(string)
  case string[0]
  when '+' then string_to_integer(string[1..-1])
  when '-' then -string_to_integer(string[1..-1])
  else string_to_integer(string)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
