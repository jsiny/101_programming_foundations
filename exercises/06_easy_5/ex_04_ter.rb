def swap(str)
  return str.reverse if str.size < 3
  str.split.each_with_object([]) do |word, sentence|
    sentence << word[-1] + word [1...-1] + word[0]
  end
     .join(' ')
end

# More elegant method

def swap_1(str)
  str.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end
     .join(' ')
end

p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
