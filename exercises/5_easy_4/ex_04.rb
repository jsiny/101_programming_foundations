# The British adopted the Gregorian calendar in 1752
# Prior to 1752, the Julian calendar was used.
# Under the Julian calendar, leap years occur in any year that is evenly
# divisible by 4.

def leap_year?(year)
  if year < 1752
    (year % 4).zero?
  elsif (year % 400).zero?
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true
