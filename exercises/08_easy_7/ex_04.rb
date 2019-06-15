def swapcase(string)
  array = []

  string.chars.each do |char|
    array <<  case char
              when /[a-z]/ then char.upcase
              when /[A-Z]/ then char.downcase
              else char
              end
  end

  array.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
