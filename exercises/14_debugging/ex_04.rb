def reverse_sentence(sentence)
  sentence.split.each_with_object([]) do |word, arr|
    arr.unshift(word)
  end.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'
