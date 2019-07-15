print 'What is your age? '
age = gets.chomp.to_i

print 'At what age would you like to retire? '
retirement = gets.chomp.to_i

current_year = Time.now.year
years_before_retirement = retirement - age
retirement_year = current_year + years_before_retirement

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_before_retirement} years of work to go!"
