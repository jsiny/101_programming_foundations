def real_palindrome?(string)
  left_i = 0
  right_i = string.size - 1

  until left_i >= string.size
    return false if string[left_i] != string[right_i]

    left_i += 1
    right_i -= 1
  end
  true
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') #== false
p real_palindrome?('hey') #== false
