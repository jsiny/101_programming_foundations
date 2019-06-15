# Input
# - Year

# Output
# - Century (with st, nd, rd, th)
# - String

# Algorithm
# - Divide year by 100 and add 1 to find century number
# - Method to add the century suffix:
#   - If century ends with "1" (except ends with "11") => st
#   - If century ends with "2" (except ends with "12") => nd
#   - If century ends with "3" (except ends with "13") => rd
#   - Else: "th"
# - Print century string

def century_suffix(century)
  if century.digits[1] == 1
    'th'
  else
    case century.digits.first
    when 1 then 'st'
    when 2 then 'nd'
    when 3 then 'rd'
    else 'th'
    end
  end
end

def century(year)
  century_num = if (year % 100).zero?
                  year / 100
                else
                  year / 100 + 1
                end
  century_num.to_s + century_suffix(century_num)
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10_103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11_201) == '113th'
