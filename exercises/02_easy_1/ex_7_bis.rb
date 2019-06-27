def stringy(n)
  string = ''
  (1..n).each { |i| string += i.odd? ? '1' : '0' }
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
