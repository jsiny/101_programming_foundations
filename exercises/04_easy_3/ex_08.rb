def palindrome_string?(string)
  string == string.reverse
end

p palindrome_string?('madam') == true
p palindrome_string?('Madam') == false          # (case matters)
p palindrome_string?("madam i'm adam") == false # (all characters matter)
p palindrome_string?('356653') == true

puts '------------------------------'

def palindrome_array?(array)
  array == array.reverse
end

p palindrome_array?([true, 3, 'hey', 3, true]) == true
p palindrome_array?(['lol', 1]) == false

puts '------------------------------'

def palindrome?(array_or_string)
  array_or_string == array_or_string.reverse
end

p palindrome?([true, 3, 'hey', 3, true]) == true
p palindrome?(['lol', 1]) == false
p palindrome?('madam') == true
p palindrome?('Madam') == false
p palindrome?("madam i'm adam") == false
