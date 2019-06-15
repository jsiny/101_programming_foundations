def sequence(count, first)
  arr = []
  index = 1
  count.times do
    arr << first * index
    index += 1
  end
  arr
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1_000_000) == []

# Shorter method

def sequence_2(count, first)
  (1..count).map { |num| num * first }
end

p sequence_2(5, 1) == [1, 2, 3, 4, 5]
p sequence_2(4, -7) == [-7, -14, -21, -28]
p sequence_2(3, 0) == [0, 0, 0]
p sequence_2(0, 1_000_000) == []
