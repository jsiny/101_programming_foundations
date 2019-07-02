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
