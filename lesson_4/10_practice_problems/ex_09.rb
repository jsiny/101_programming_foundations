def titleize(sentence)
  sentence.split.map(&:capitalize).join(' ')
end

words = 'the flintstones rock'
p titleize(words) == 'The Flintstones Rock'
