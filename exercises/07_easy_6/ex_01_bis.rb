MIN_PER_DEGREE = 60
SEC_PER_MIN = 60

def dms(angle)
  hours, minutes = angle.divmod(1)
  minutes, seconds = (minutes * MIN_PER_DEGREE).divmod(1)
  seconds *= SEC_PER_MIN
  format("%d°%02d'%02d\"", hours, minutes, seconds)
end

p dms(30)         == "30°00'00\""
p dms(76.73)      == "76°43'48\""
p dms(254.6)      == "254°35'59\""
p dms(93.034773)  == "93°02'05\""
p dms(0)          == "0°00'00\""
p dms(360)        == "360°00'00\"" || dms(360) == "0°00'00\""
