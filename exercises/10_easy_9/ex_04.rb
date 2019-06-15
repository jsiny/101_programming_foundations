def sequence(num)
  result = []
  1.upto(num) { |i| result << i }
  result
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

# Shorter method & Further Exploration

def sequence_2(num)
  num > 0 ? (1..num).to_a : (num..-1).to_a.reverse
end

p sequence_2(5)   == [1, 2, 3, 4, 5]
p sequence_2(3)   == [1, 2, 3]
p sequence_2(1)   == [1]
p sequence_2(-1)  == [-1]
p sequence_2(-3)  == [-1, -2, -3]
p sequence_2(-5)  == [-1, -2, -3, -4, -5]
