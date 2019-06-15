def penultimate(sentence)
  sentence.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

# Further Exploration: middle word

# Edge cases:
# - Sentence with one word: return the word
# - Strings without words: return empty string
# - Strings with an even number of words: return both middle words

def middle_word(sentence)
  return '' if sentence.empty?
  words = sentence.split
  l = words.size

  return words[0] if l == 1
  return words[l / 2] if l.odd?
  (words[l / 2 - 1] + ' ' + words[l / 2])
end

p middle_word('Hello') == 'Hello'
p middle_word('Hello dear Jane') == 'dear'
p middle_word('') == ''
p middle_word('Tout ce rouge sur mon corps') == 'rouge sur'
p middle_word('hello darkness my old friend') == 'my'
