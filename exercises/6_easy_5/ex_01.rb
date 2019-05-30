# The ASCII string value is the sum of the ASCII values of evrey
# character in the string.

def ascii_value(string)
  ascii = 0
  string.chars.each { |letter| ascii += letter.ord }
  ascii
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# Further Exploration

p 'a'.ord.chr == 'a'
p 'hello'.ord.chr == 'h'

# If I try with a longer string, only the first letter is returned
