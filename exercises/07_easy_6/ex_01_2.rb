# Input
# float between 0 and 360 degrees

# Output
# a string that represents the angle in degrees, minutes and seconds
# - degrees: int + °
# - minutes: int (2 digits) + '
# - seconds : int (2 digits) + ""

# Algorithm
# - Use .to_i to define the degrees
# - To define the minutes, Use modulo(1) * 60 . to_i
# - Assign the first part to a gross minutes var
# - To define the seconds, use the gross minutes var, modulo(1) * 60 .to_i
# - Format the result into a string

MIN_IN_DEGREE = 60
SEC_IN_MINUTES = 60

def dms(angle)
  degrees = angle.to_i % 360
  minutes = (angle.modulo(1) * MIN_IN_DEGREE).to_i
  seconds = ((angle.modulo(1) * MIN_IN_DEGREE).modulo(1) * SEC_IN_DEGREE).to_i
  format(%(#{degrees}°%02d'%02d"), minutes, seconds)
end

p dms(30)
p dms(76.73)
p dms(254.6)
p dms(93.034773)
p dms(0)
p dms(360)
p dms(370)
