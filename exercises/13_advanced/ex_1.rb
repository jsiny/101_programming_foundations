ADJECTIVES = %w(pretty noice merry jolly)
NOUNS = %w(kitty doggo bunny mouse)
VERBS = %w(licks bites cuddles)
ADVERBS = %w(happily noisily excitedly)

File.open('ex_1.txt') do |file|
  file.each do |line|
    puts format(line, noun: NOUNS.sample,
                      adjective: ADJECTIVES.sample,
                      verb: VERBS.sample,
                      adverb: ADVERBS.sample)
  end
end
