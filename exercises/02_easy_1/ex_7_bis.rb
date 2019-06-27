def stringy_1(n)
  string = ''
  n.times { |i| string += i.even? ? '1' : '0' }
  string
end

puts stringy_1(6) == '101010'
puts stringy_1(9) == '101010101'
puts stringy_1(4) == '1010'
puts stringy_1(7) == '1010101'

# Further Exploration

def stringy(n, even = 1)
  string = ''
  odd = even.zero? ? 1 : 0
  n.times { |i| string += i.even? ? even.to_s : odd.to_s }
  string
end

puts stringy(6, 0)  == '010101'
puts stringy(9)     == '101010101'
puts stringy(4, 0)  == '0101'
puts stringy(7)     == '1010101'
