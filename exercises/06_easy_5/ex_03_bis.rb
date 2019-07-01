MINUTES_IN_AN_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_IN_AN_HOUR * HOURS_PER_DAY

def after_midnight_1(string)
  hours, minutes = string.split(':').map(&:to_i)
  (hours * MINUTES_IN_AN_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight_1(string)
  delta_min = MINUTES_PER_DAY - after_midnight_1(string)
  delta_min % MINUTES_PER_DAY
end

p after_midnight_1('00:00').zero?
p before_midnight_1('00:00').zero?
p after_midnight_1('12:34')  == 754
p before_midnight_1('12:34') == 686
p after_midnight_1('24:00').zero?
p before_midnight_1('24:00').zero?
p before_midnight_1('23:00') == 60
p before_midnight_1('00:10') == 1430

# Further Exploration

require 'time'

SEC_PER_MIN = 60
MIN_PER_DAY = 1440

def after_midnight(string)
  ((Time.parse(string) - Time.parse('00:00')).to_i / SEC_PER_MIN) % MIN_PER_DAY
end

def before_midnight(string)
  (MIN_PER_DAY - after_midnight(string)) % MIN_PER_DAY
end

p after_midnight('00:00').zero?
p before_midnight('00:00').zero?
p after_midnight('12:34')  == 754
p before_midnight('12:34') == 686
p after_midnight('24:00').zero?
p before_midnight('24:00').zero?
p before_midnight('23:00') == 60
p before_midnight('00:10') == 1430
