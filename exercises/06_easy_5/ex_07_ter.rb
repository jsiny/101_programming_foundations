def word_sizes(str)
  words = str.delete('^a-zA-Z ').split
  words.each_with_object({}) do |word, count|
    count[word.size] = words.count { |el| el.size == word.size }
  end
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
