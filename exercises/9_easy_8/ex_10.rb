def center_of(sentence)
  middle = sentence.size / 2
  if sentence.size.odd?
    sentence[middle]
  else
    sentence[middle - 1, 2]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
