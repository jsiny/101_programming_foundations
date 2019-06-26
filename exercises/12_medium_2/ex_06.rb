def triangle(a, b, c)
  angles = [a, b, c]

  if valid_triangle?(angles)
    case
    when angles.include?(90)                then :right
    when angles.all? { |angle| angle < 90 } then :acute
    when angles.any? { |angle| angle > 90 } then :obtuse
    end
  else
    :invalid
  end
end

def valid_triangle?(angles)
  return false if angles.include?(0)
  angles.sum == 180
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
