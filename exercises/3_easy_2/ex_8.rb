# Write a program that asks the user to enter an integer greater than 0, then
# asks if the user wants to determine the sum or product of all numbers
# between 1 and the entered integer.

# Examples:

=begin

>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

=end

# input:
#   - an integer > 0
#   - a string representing the operator

# output:
#   - a string with either:
#     - the sum
#     - the product
#   - AND the initial integer

# Algorithm:
#   - prints a statement prompting the user for an integer
#   - gets the user input and assign it to a variable
#   - prints a statement prompting the user for an operation
#   - gets the user input and assign it to a variable
#   - define the sum operation:
#     - Loop:
#       - from 1 to the given integer
#       - add this new integer to the sum
#   - define the product operation:
#     - Loop:
#       - from 1 to the given integer
#       - multiply this new integer into the product
#   - print the string with the result

puts ">> Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

def addition(num)
  sum = 0
  1.upto(num) { |i| sum += i }
  sum
end

def multiplication(num)
  product = 1
  1.upto(num) { |i| product *= i }
  product
end

if    operation == "s"
  puts "The sum of the integers between 1 and #{number} is #{addition(number)}."
elsif operation == "p"
  puts "The product of the integers between 1 and #{number} is #{multiplication(number)}." 
else
  puts "Invalid input"
end