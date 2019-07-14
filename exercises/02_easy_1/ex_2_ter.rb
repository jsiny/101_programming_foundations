def odd?(num)
  num.abs.remainder(2) == 1
end

puts odd?(2)    == false
puts odd?(5)    == true
puts odd?(-17)  == true
puts odd?(-8)   == false
puts odd?(0)    == false
puts odd?(7)    == true

# without further exploration: num % 2 == 1
