def neutralize(sentence)
  sentence.split(' ').reject! { |word| negative?(word) }.join(' ')
end

def negative?(word)
  %w(dull boring annoying chaotic).include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.') ==
  'These cards are part of a board game.'
