def greetings(name, title)
  puts "Hello #{name.join(' ')}! Nice to have a "\
  "#{title[:title]} #{title[:occupation]} around."
end

greetings(%w(Juliette Ariane Helen), title: 'General', occupation:
'Manager')
# => Hello, Juliette Ariane Helen! Nice to have a General Manager
# around.

greetings(%w(John Q Doe), title: 'Master', occupation: 'Plumber')
# => Hello, John Q Doe! Nice to have a Master Plumber around.
