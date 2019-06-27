print 'What is the bill? '
before_tip = gets.to_f

print 'What is the tip percentage? '
tip_percentage = gets.to_f

tip = (before_tip * tip_percentage / 100).round(2)
total_bill = (before_tip + tip).round(2)

puts "The tip is $#{tip}"
puts "The total is $#{total_bill}"
