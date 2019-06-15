# Build a program that displays when the user will retire and how many years
# she has to work till retirement.

# inputs
#   - current age: (positive) integer
#   - retirement age: (positive) integer

# implied input:
#   - current year: positive integer

# outputs
#   - string containing 2 integers:
#     - year of retirement: positive integer
#     - number of years before retiring: positive integer

# Clarifications
#   - What if the user has already retired? Should I handle this case? 
#   I'll assume I needn't.
#   - What if the inputs are invalid? (non integers, non positive) I'll assume 
#   this won't happen.
#   - What about plurals? If I only have 1 year before retirement, I shouldn't
#   print "years"

# Data Structure
#   - inputs: integers
#   - outputs: string and integers

# Algorithm
#   - The program receives the age and converts it to an integer
#   - The program receives the retirement age and converts it to a string
#   - The programs retrieves the current year through the Time class
#   - years before retiring = retirement age - current age
#   - year of retirement = current year + years before retiring
#   - The program includes those strings in a printed string

print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

current_year            =   Time.now.year

years_before_retiring   =   retirement_age - age
retirement_year         =   current_year + years_before_retiring

puts "It's #{current_year}. You will retire in #{retirement_year}."

unless years_before_retiring == 1
  puts "You have only #{years_before_retiring} years of work to go!"
else
  puts "You have only 1 year of work to go!"
end

# Example:
# What is your age? 30
# At what age would you like to retire? 70
# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!
