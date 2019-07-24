HOURS_PER_D = 24
MIN_PER_H = 60
MIN_PER_D = HOURS_PER_D * MIN_PER_H

def time_of_day(n)
  n %= MIN_PER_D
  hours, min = n.divmod(MIN_PER_H)
  format('%02d:%02d', hours, min)
end

p time_of_day(0)      == '00:00'
p time_of_day(-3)     == '23:57'
p time_of_day(35)     == '00:35'
p time_of_day(-1437)  == '00:03'
p time_of_day(3000)   == '02:00'
p time_of_day(800)    == '13:20'
p time_of_day(-4231)  == '01:29'

# Further Exploration

SEC_PER_M = 60

def time_and_date(n)
  (Time.new(2019, 7, 21) + n * SEC_PER_M).strftime('%A %R')
end

p time_and_date(0)      == 'Sunday 00:00'
p time_and_date(-3)     == 'Saturday 23:57'
p time_and_date(35)     == 'Sunday 00:35'
p time_and_date(-1437)  == 'Saturday 00:03'
p time_and_date(3000)   == 'Tuesday 02:00'
p time_and_date(800)    == 'Sunday 13:20'
p time_and_date(-4231)  == 'Thursday 01:29'
