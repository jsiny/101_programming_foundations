MINUTES_IN_AN_HOUR = 60
HOURS_IN_A_DAY = 24

def time_of_day(integer)
  total_minutes = integer % (MINUTES_IN_AN_HOUR * HOURS_IN_A_DAY)
  hours = total_minutes / MINUTES_IN_AN_HOUR
  minutes = total_minutes % MINUTES_IN_AN_HOUR
  format("%02d", hours) + ':' + format("%02d", minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
