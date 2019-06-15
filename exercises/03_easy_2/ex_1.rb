# Build a program that randomly generates and prints Teddy's age. To get the age, you
# should generate a random number between 20 and 200.

# input
#   - nothing

# output
#   - a string with the age

# Clarifications:
#   - the age should be between 20 and 200 included
#   - what happens if an argument is given to the method? let's assume this 
#   won't happen

# Example output
# => Teddy is 69 years old!

# Data structure:
#   output: a string with an integer interpolated

# Algorithm
#   - generate a random integer between 20 and 200 included
#   - prints a string with the integer

def how_old_is_teddy
  puts "What's this person's name?"
  name = gets.chomp
  name = "Teddy" if name.empty?
  age = rand(20..200)
  puts "#{name} is #{age} years old!"
end

how_old_is_teddy()
how_old_is_teddy()
how_old_is_teddy()

