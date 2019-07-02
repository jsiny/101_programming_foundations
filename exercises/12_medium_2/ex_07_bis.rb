# Create date instance with year, month = January and day = 13
# initialize count var
# 12 times:
# - check if this date is friday? and add to count if so
# - add 1 to month
# return count

require 'date'

def friday_13th(year)
  day = Date.new(year, 1, 13)
  count = 0
  12.times do
    count += 1 if day.friday?
    day = day.next_month
  end
  count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

# Further Exploration: Five Fridays

def five_fridays(year)
  date = Date.new(year)
  month = 1

  month_count = 0
  friday_count = 1

  date = date.next_day until date.friday?

  while date.year == year
    7.times { date = date.next_day }
    if date.month == month
      friday_count += 1
    else
      month_count += 1 if friday_count == 5
      friday_count = 1
      month += 1
    end
  end
  month_count
end

p five_fridays(2019)
