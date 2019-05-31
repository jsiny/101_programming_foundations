ALPHABET = ('A'..'z').to_a

def word_sizes(sentence)
  results = Hash.new(0)
  sentence.split.each do |word|
    clean_word = []
    word.chars.each { |char| clean_word << char if ALPHABET.include?(char) }
    results[clean_word.size] += 1
  end
  results
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
