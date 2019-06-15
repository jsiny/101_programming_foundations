def swap_letters(array)
  results = []
  return array.join('') if array.size == 1
  results << array[-1]
  results << array[(1..-2)]
  results << array[0]
  results.join('')
end

def swap(sentence)
  new_sentence = []
  sentence.split(' ').map do |word|
    letters = word.split('')
    new_sentence << swap_letters(letters)
  end
  new_sentence.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
