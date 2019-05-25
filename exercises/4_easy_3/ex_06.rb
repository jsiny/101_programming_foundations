def xor?(first, second)
  return false if first == second
  true
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

# Further exploration

# The `xor` method does not perform short-circuit evaluation on its
# operands because this method evaluates for equality (first == second).
# To do that, the method needs to evaluate both arguments, therefore no short
# circuit evaluation is possible here.
