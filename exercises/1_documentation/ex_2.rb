require 'date'

# To solve this problem, the firs step is to open the Date class documentation
# https://docs.ruby-lang.org/en/2.6.0/Date.html

puts Date.new
# -4712-01-01

# If no year is given, the default year is -4712
# If no month is given, the default month is 01 (January)
# If no day is given, the default day is the 1st

puts Date.new(2016)
# 2016-01-01

puts Date.new(2016, 5)
# 2016-05-01 

puts Date.new(2016, 5, 13)
# 2016-05-13