# Create a simple tip calculator. The program should prompt for a bill amount
# and a tip rate.
# The program must compute the tip and then display both the tip and the 
# total amount of the bill.

# Example output
#   What is the bill? 200
#   What is the tip percentage? 15
#   ---
#   The tip is $30.0
#   The total is $230.0

# inputs
#   - bill amount: an integer (or float?)
#   - tip percentage: an integer (or float?)

# ouputs:
#   - tip amount: a float
#   - total amount: a float

# Clarifications:
#   - Should I expect a float or an integer as inputs? I'll consider floats.
#   - What if the tip percentage is 0? Should I keep the line "The tip is..." ?
#   I'll assume yes.
#   - I'll assume the inputs are valid (floats and positive numbers)

# Data Structure
#   - input: will remain floats
#   - output: floats

# Algorithm
#   - The program prompts for a bill amount and converts it to a float
#   - The program prompts for a tip percentage and converts it to a float
#   - The program multiplies the bill by the tip percentage and retrieves the tip
#   - The programs adds this tip to the bill amount to get the total amount

print "What is the bill? "
bill = gets.chomp.to_f

print "What is the tip percentage? "
percentage = gets.chomp.to_f

def compute_tip(bill, percentage)
  
  tip   = ( bill * percentage / 100 ).round(2)
  total = ( bill + tip ).round(2)
  
  puts "The tip is $#{tip}"
  puts "The total is $#{total}"
  
end

compute_tip(bill, percentage)
  