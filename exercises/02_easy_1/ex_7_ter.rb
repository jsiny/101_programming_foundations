def stringy(int)
  Array.new(int) { |i| i.even? ? '1' : '0' }.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Further Exploration

def stringy_2(int, first = 1)
  second = first == 1 ? '0' : '1'
  Array.new(int) { |i| i.even? ? first.to_s : second }.join
end

puts stringy_2(6, 0)  == '010101'
puts stringy_2(9)     == '101010101'
puts stringy_2(4, 0)  == '0101'
puts stringy_2(7)     == '1010101'
