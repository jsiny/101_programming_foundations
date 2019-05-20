# Write a program that prompts the user for two positive integers, and then
# prints the results of the following operations on those two numbers:
# addition, substraction, product, quotient, remainder, and power.
# Do not worry about validating the input.

def prompt(message)
  puts "==> #{message}"
end

prompt 'Enter the first number:'
num1 = gets.chomp.to_i
# to_f if we want to use floats instead of integers

prompt 'Enter the second number:'
num2 = gets.chomp.to_i

prompt "#{num1} + #{num2} = #{num1 + num2}"
prompt "#{num1} - #{num2} = #{num1 - num2}"
prompt "#{num1} * #{num2} = #{num1 * num2}"
prompt "#{num1} / #{num2} = #{num1 / num2}"
prompt "#{num1} % #{num2} = #{num1 % num2}"
prompt "#{num1} ** #{num2} = #{num1**num2}"
