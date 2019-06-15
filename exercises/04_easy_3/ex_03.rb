print 'Please write a word or multiple words: '
sentence = gets.chomp

puts "There are #{sentence.gsub(/\s+/, '').size} characters in \"#{sentence}\"."
