MAX_DEGREES     = 360
MIN_PER_DEGREE  = 60
SEC_PER_MIN     = 60

def dms(float)
  degrees, min = (float % MAX_DEGREES).divmod(1)
  min, sec = (min * MIN_PER_DEGREE).divmod(1)
  sec = (sec * SEC_PER_MIN).to_i
  format("%d°%02d'%02d\"", degrees, min, sec)
end

p dms(30)         == "30°00'00\""
p dms(76.73)      == "76°43'48\""
p dms(254.6)      == "254°35'59\""
p dms(93.034773)  == "93°02'05\""
p dms(0)          == "0°00'00\""
p dms(360)        == "360°00'00\"" || dms(360) == "0°00'00\""
p dms(400)        == "40°00'00\""
p dms(-40)        == "320°00'00\""
p dms(-420)       == "300°00'00\""
