print 'What is the bill? '
bill = gets.chomp.to_f

print 'What is the tip percentage? '
percentage = gets.chomp.to_f

tip = bill * percentage / 100
total = bill + tip

puts "The tip is $#{tip}"
puts "The total is $#{total}"
