MIN_PER_H = 60
MAX_HOURS = 24
MAX_MIN = MAX_HOURS * MIN_PER_H

def split_time(str)
  str.split(':').map(&:to_i)
end

def after_midnight(str)
  hours, min = split_time(str)
  (hours % MAX_HOURS) * MIN_PER_H + min
end

p after_midnight('00:00').zero?
p after_midnight('24:00').zero?
p after_midnight('12:34') == 754

def before_midnight(str)
  hours, min = split_time(str)
  ((MAX_HOURS - hours) * MIN_PER_H - min) % MAX_MIN
end

def before_midnight_1(str)
  (MAX_MIN - after_midnight(str)) % MAX_MIN
end

p before_midnight('00:00').zero?
p before_midnight('24:00').zero?
p before_midnight('12:34') == 686
p before_midnight('23:00') == 60
p before_midnight('00:10') == 1430
