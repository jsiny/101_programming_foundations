# Leap year if:
# - Year evenly divisible by 4
# - UNLESS that year is also divisible by 100
# - => It needs to also be envely divisible by 400

# Input:
# - Year (integer)

# Output:
# - Boolean

# Algorithm
# - if the year is divisible by 4
# - >> check whether the year is also divisible by 100
# - >> - if it isn't => true
# - >> - if it is, check whether the year is also divisible by 400
# - >> - >> if it is, => true, else => false
# - false else

# def leap_year?(year)
#   if (year % 4).zero?
#     if (year % 100).zero?
#       (year % 400).zero? ? true : false
#     else
#       true
#     end
#   else
#     false
#   end
# end

def leap_year?(year)
  if (year % 400).zero?
    true
  elsif (year % 100).zero?
    false
  else
    (year % 4).zero?
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240_000) == true
p leap_year?(240_001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

# Further Exploration

# That solution is more complex. This is the one I initially wrote :'(
