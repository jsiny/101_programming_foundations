# Write a method that takes two arguments (a string and a positive integer),
# and prints the string as many times as the integer indicates.

# inputs
# - a string
# - an integer >= 0

# output
# - several strings

# Example:
# repeat('Hello', 3)
# ------------------
# Hello
# Hello
# Hello

# Clarifying questions:
# - What if the string is empty?
# - What if the integer is negative?
# - Do I need to validate that this method received a positive integer?
# - Should this method be case-sensitive?
# - What should this method return in case number == 0 ?

# Examples
# (Below)

# Data structures:
# - input:
# > a string
# > an integer
# - output:
# > several strings

# Algorithm:
# The program reads the input (a string and an integer) as parameters
# The program loops as many times as the given number
# At each iteration, the string is printed

def repeat(string, number)
  number.times { puts string }
end

repeat("Hello", 3)

# Examples:

repeat('hello', 0)      # => nil
repeat('hello', 1)      # => "hello" x1
repeat('', 2)           # => two blank lines
repeat('hello', -1)     # => nil
repeat("HELLO", 2)      # => "HELLO" x2