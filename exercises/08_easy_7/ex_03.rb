def word_cap(string)
  string.split.map(&:capitalize).join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Further Exploration
# How to capitalize without the capitalize method

def word_cap_2(string)
  array = []
  string.split.each { |word| array << word[0].upcase + word[1..-1].downcase }
  array.join(' ')
end

p word_cap_2('four score and seven') == 'Four Score And Seven'
p word_cap_2('the javaScript language') == 'The Javascript Language'
p word_cap_2('this is a "quoted" word') == 'This Is A "quoted" Word'
