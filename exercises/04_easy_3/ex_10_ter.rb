def palindrome?(object)
  object == object.reverse
end

def palindromic_number?(int)
  palindrome?(int.digits)
end

p palindromic_number?(34_543)  == true
p palindromic_number?(123_210) == false
p palindromic_number?(22)      == true
p palindromic_number?(5)       == true
