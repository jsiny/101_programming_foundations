def palindromic_number?(integer)
  string = integer.to_s
  string == string.reverse
end

p palindromic_number?(34_543) == true
p palindromic_number?(123_210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
