def alphabetic?(char)
  char.count('^a-zA-Z ').zero?
end

# Should have used String#squeeze instead
def remove_consecutive_space(array)
  array.map.with_index do |element, i|
    next if element != ' '
    array.delete_at(i + 1) until array[i + 1] != ' '
  end
  array
end

def cleanup(sentence)
  chars = sentence.split('')
  chars.map.with_index do |element, i|
    chars[i] = if alphabetic?(element)
                 element
               else
                 ' '
               end
  end
  remove_consecutive_space(chars).join('')
end

# Examples
p cleanup("---what's my +*& line?") == ' what s my line '
p cleanup('hello ') == 'hello '
p cleanup('%damn! that looks gewd <3') == ' damn that looks gewd '

# FURTHER EXPLORATION

ALPHABET = ('a'..'z').to_a

def cleanup_2(sentence)
  clean_letters = []
  sentence.chars.each do |char|
    if ALPHABET.include?(char)
      clean_letters << char
    else
      clean_letters << ' ' unless clean_letters.last == ' '
    end
  end
  clean_letters.join('')
end

p cleanup_2("---what's my +*& line?") == ' what s my line '
p cleanup_2('hello ') == 'hello '
p cleanup_2('%damn! that looks gewd <3') == ' damn that looks gewd '
