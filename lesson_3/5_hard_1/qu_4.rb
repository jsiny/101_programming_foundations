# QUESTION 4

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split('.')
  return false if dot_separated_words.size != 4
  while dot_separated_words.size.!empty?
    word = dot_separated_words.pop
    return false unless ip_number?(word)
  end
  true
end

def ip_number?(word)  # I've renamed the method because Rubocop was unhappy
  # mystery method
end
