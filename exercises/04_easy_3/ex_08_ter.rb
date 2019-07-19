# Further Exploration

def palindrome?(object)
  object == object.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
p palindrome?([1, 2, 3]) == false
p palindrome?(%w(abc hey abc)) == true
