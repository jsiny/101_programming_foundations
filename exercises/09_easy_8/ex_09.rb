def reversed_number(num)
  num.to_s.reverse.to_i
end

p reversed_number(12_345) == 54_321
p reversed_number(12_213) == 31_221
p reversed_number(456) == 654
p reversed_number(12_000) == 21 # No leading zeros in return value!
p reversed_number(12_003) == 30_021
p reversed_number(1) == 1
