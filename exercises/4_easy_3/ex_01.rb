# Write a program that solicits 6 numbers from the user, then prints a message
# that describes whether or not the 6th number appears amongst the first 5
# numbers.

# inputs:
#   - 6 integers from the user

# outputs:
#   - a string

# Clarifications:
#   - Do i need to validate the user input? => I'll assume I have to
#   - Can it be a negative number? => Yes

# EXAMPLE 1

# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].

# EXAMPLE 2

# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].

# Data Structure
#   inputs: will be pushed into an array
#   output: a string with 3 interpolations:
#           - the 6th number
#           - the verb (appears/ doesn't appear)
#           - the array with the first 5th numbers

# Algorithm
#   Initiate numbers array
#   Loop 6 times
#   - Prompt the user for the Nth number
#   - Checks the validity of the number
#     - loop
#     - input.to_i != 0 OR input.chomp == "0"
#     - break unless not a number
#     - puts a warning statement
#   - Break if numbers array's length == 5
#   - If valid, push into numbers array (up until 5th iteration)
#   Checks whether the numbers array includes the number_6 (def appears?)
#   Prints the string accordingly

def appears?(numbers, last_num)
  return 'appears' if numbers.include?(last_num)
  "doesn't appear"
end

count = %w(1st 2nd 3rd 4th 5th last)
numbers = []

last_num = count.each do |index|
  number = ''
  puts "==> Enter the #{index} number:"

  loop do
    number = gets.chomp
    break if number.to_i != 0 || number == '0'
    puts "==> This isn't right. Please input a valid number:"
  end

  break number if numbers.length == 5
  numbers << number
end

puts "The number #{last_num} #{appears?(numbers, last_num)} in #{numbers}."
