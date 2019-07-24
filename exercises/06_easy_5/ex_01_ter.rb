def ascii_value(str)
  str.chars.map(&:ord).sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('').zero?

# Further Exploration

# Integer#chr is the reverse of String#ord

p 's'.ord.chr == 's'
