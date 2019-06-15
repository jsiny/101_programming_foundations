# Print all odd numbers from 1 to 99, inclusive.
# All numbers should be printed on separate lines.

# Example
# 1
# 3
# 5
# ...
# 97
# 99

# input
#  no input

# output
#  every odd numbers from 1 to 99

(1..99).select(&:odd?).each { |n| puts n }


puts "------------------------------------------------"

# Further exploration

0.upto(49) { |i| puts i * 2 + 1 } 
