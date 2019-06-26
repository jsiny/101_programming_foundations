# rubocop:disable Style/EmptyCaseCondition
def triangle(a, b, c)
  angles = [a, b, c]

  case
  when angles.sum != 180 || angles.include?(0)  then :invalid
  when angles.include?(90)                      then :right
  when angles.all? { |angle| angle < 90 }       then :acute
  when angles.any? { |angle| angle > 90 }       then :obtuse
  end
end
# rubocop:enable Style/EmptyCaseCondition

p triangle(60, 70, 50)  == :acute
p triangle(30, 90, 60)  == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90)   == :invalid
p triangle(50, 50, 50)  == :invalid
