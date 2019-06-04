DEGREE = "\xC2\xB0".freeze
MIN_IN_A_DEGREE = 60
SECONDS_IN_A_MINUTE = 60
SECONDS_IN_A_DEGREE = MIN_IN_A_DEGREE * SECONDS_IN_A_MINUTE

def dms(angle)
  decimals = angle.modulo(1).round(6)
  minutes = (decimals * MIN_IN_A_DEGREE).to_i
  seconds = ((decimals * MIN_IN_A_DEGREE).modulo(1) * SECONDS_IN_A_MINUTE).to_i
  degrees = angle % 360
  format(%(#{degrees.to_i}°%02d'%02d"), minutes, seconds)
end

p dms(30)
p dms(76.73)
p dms(254.6)
p dms(93.034773)
p dms(0)
p dms(360)
