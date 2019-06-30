MINUTES_IN_AN_HOUR = 60
HOURS_IN_A_DAY = 24

def time_of_day(integer)
  total_minutes = integer % (MINUTES_IN_AN_HOUR * HOURS_IN_A_DAY)
  hours, minutes = total_minutes.divmod(MINUTES_IN_AN_HOUR)
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0)      == '00:00'
p time_of_day(-3)     == '23:57'
p time_of_day(35)     == '00:35'
p time_of_day(-1437)  == '00:03'
p time_of_day(3000)   == '02:00'
p time_of_day(800)    == '13:20'
p time_of_day(-4231)  == '01:29'

# Further Exploration: with Date and Time modules

SECONDS_PER_MINUTES = 60

def time_of_day_2(integer)
  (Time.new(2019) + integer * SECONDS_PER_MINUTES).strftime('%H:%M')
end

p time_of_day_2(0)      == '00:00'
p time_of_day_2(-3)     == '23:57'
p time_of_day_2(35)     == '00:35'
p time_of_day_2(-1437)  == '00:03'
p time_of_day_2(3000)   == '02:00'
p time_of_day_2(800)    == '13:20'
p time_of_day_2(-4231)  == '01:29'

# Further Exploration: with days of the week

def time_and_date(n)
  (Time.new(2019, 6, 30) + n * SECONDS_PER_MINUTES).strftime('%A %R')
end

p time_and_date(0)      == 'Sunday 00:00'
p time_and_date(-3)     == 'Saturday 23:57'
p time_and_date(35)     == 'Sunday 00:35'
p time_and_date(-1437)  == 'Saturday 00:03'
p time_and_date(3000)   == 'Tuesday 02:00'
p time_and_date(800)    == 'Sunday 13:20'
p time_and_date(-4231)  == 'Thursday 01:29'
