def real_palindrome?(original_string)
  stripped_input = original_string.downcase.gsub(/[^0-9a-z]/, '')
  reversed = stripped_input.reverse
  stripped_input == reversed
end



p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false