MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0) == '00:00'
p time_of_day(-3) == '23:57'
p time_of_day(35) == '00:35'
p time_of_day(-1437) == '00:03'
p time_of_day(3000) == '02:00'
p time_of_day(800) == '13:20'
p time_of_day(-4231) == '01:29'
p time_of_day(-120) == '22:00'

p '-------------------'

# Further exploration

TIME_REFERENCE = Time.new(2019, 6, 2, 0, 0, 0)
SECONDS_PER_MINUTES = 60

p TIME_REFERENCE + 1
p TIME_REFERENCE - 1

def time_of_day_2(integer)
  (TIME_REFERENCE + integer * SECONDS_PER_MINUTES).strftime('%A %H:%M')
end

p time_of_day_2(0) == 'Sunday 00:00'
p time_of_day_2(-3) == 'Saturday 23:57'
p time_of_day_2(35) == 'Sunday 00:35'
p time_of_day_2(-1437) == 'Saturday 00:03'
p time_of_day_2(3000) == 'Tuesday 02:00'
p time_of_day_2(800) == 'Sunday 13:20'
p time_of_day_2(-4231) == 'Thursday 01:29'
p time_of_day_2(-120) == 'Saturday 22:00'
