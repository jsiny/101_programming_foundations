# Algorithm
# - check if the integer is negative
# => if it is, the new result is integer + 1440 (24 * 60)
# - divide the integer by 60 to retrieve the nb of hours
# - retrieve the integer modulus result and store it in a minutes variable
# - divide the hours integer by 24 and keep the modulus result
# for the hours variable
# - return a string with hours, :, minutes

require 'pry'

def two_digits(integer)
  if integer.abs < 10
    '0' + integer.to_s
  else
    integer.to_s
  end
end

def time_of_day(integer)
  integer += 24 * 60 if integer < 0
  number_of_hours = integer / 60
  hours_integer =   if number_of_hours.abs < 24
                      number_of_hours
                    else
                      number_of_hours / 24
                    end
  # binding.pry
  hours = two_digits(hours_integer)
  # binding.pry
  minutes = two_digits(integer % 60)
  # binding.pry
  hours + ':' + minutes
end

p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) #== "00:35"
p time_of_day(-1437) #== "00:03"
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"
