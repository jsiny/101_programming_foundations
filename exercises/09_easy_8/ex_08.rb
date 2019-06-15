# Vowels, digits, punctuation and whitespace should not be doubled

def double_consonants(string)
  double = ''
  string.chars.each do |char|
    double << add_value(char)
  end
  double
end

def add_value(char)
  if char =~ /[a-z]/i
    char =~ /[aeiou]/i ? char : char * 2
  else
    char
  end
end

p double_consonants('String') == 'SSttrrinngg'
p double_consonants('Hello-World!') == 'HHellllo-WWorrlldd!'
p double_consonants('July 4th') == 'JJullyy 4tthh'
p double_consonants('') == ''
