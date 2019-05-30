MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def split_hour(string)
  string.split(':').map(&:to_i)
end

def after_midnight(string)
  hours, minutes = split_hour(string)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(string)
  delta_minutes = MINUTES_PER_DAY - after_midnight(string)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

p before_midnight('23:58') == 2
p before_midnight('22:45') == 75
p before_midnight('22:00') == 120
p before_midnight('00:00') == 0
p before_midnight('12:34') == 686
p before_midnight('24:00') == 0

puts '-----------'
p after_midnight('00:00') == 0
p after_midnight('12:34') == 754
p after_midnight('24:00') == 3

# Further Exploration

def after_midnight_2(string)
end

def before_midnight_2(string)
end

p before_midnight_2('23:58') == 2
p before_midnight_2('22:45') == 75
p before_midnight_2('22:00') == 120
p before_midnight_2('00:00') == 0
p before_midnight_2('12:34') == 686
p before_midnight_2('24:00') == 0

puts '-----------'
p after_midnight_2('00:00') == 0
p after_midnight_2('12:34') == 754
p after_midnight_2('24:00') == 3
