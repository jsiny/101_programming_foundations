def prompt(a_something)
  print "Enter #{a_something}: "
  gets.chomp
end

noun = prompt('a noun')
verb = prompt('a verb')
adjective = prompt('an adjective')
adverb = prompt('an adverb')

sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

puts [sentence_1, sentence_2, sentence_3].sample

puts sentence_1
puts sentence_2
puts sentence_3
