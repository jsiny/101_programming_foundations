MINUTES_IN_AN_HOUR = 60

def after_midnight(string)
  hours = string[0..1] == '24' ? 0 : string[0..1].to_i
  minutes = string[3..4].to_i
  hours * MINUTES_IN_AN_HOUR + minutes
end

def before_midnight(string)
  if string == '00:00'
    hours = 23
    minutes = 60
  else
    hours = string[0..1].to_i
    minutes = string[3..4].to_i
  end

  23 * 60 - hours * MINUTES_IN_AN_HOUR + 60 - minutes
end

p after_midnight('00:00').zero?
p before_midnight('00:00').zero?
p after_midnight('12:34')  == 754
p before_midnight('12:34') == 686
p after_midnight('24:00').zero?
p before_midnight('24:00').zero?
p before_midnight('23:00') == 60
p before_midnight('00:10') == 1430

