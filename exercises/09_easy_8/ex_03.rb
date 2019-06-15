def substrings_at_start(string)
  substrings = []
  string.chars.each_with_index do |_, i|
    accumulation = ''
    0.upto(i) { |n| accumulation += string[n] }
    substrings << accumulation
  end
  substrings
end

p substrings_at_start('abc') == %w(a ab abc)
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == %w(x xy xyz xyzz xyzzy)

# Shorter method

def substrings_at_start_2(string)
  substrings = []
  0.upto(string.size - 1) { |index| substrings << string[0..index] }
  substrings
end

p substrings_at_start_2('abc')
