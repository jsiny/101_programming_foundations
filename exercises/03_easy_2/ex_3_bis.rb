TWO_DECIMALS = '%.2f'.freeze

print 'What is the bill? '
before_tip = gets.to_f

print 'What is the tip percentage? '
tip_percentage = gets.to_f

tip = (before_tip * tip_percentage / 100)
total_bill = (before_tip + tip)

puts "The tip is $#{TWO_DECIMALS % tip}"
puts "The total is $#{TWO_DECIMALS % total_bill}"
