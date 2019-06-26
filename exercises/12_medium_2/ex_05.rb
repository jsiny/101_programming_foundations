def triangle(a, b, c)
  if valid_triangle?(a, b, c)
    return :equilateral if a == b && a == c
    return :scalene if a != b && a != c
    :isosceles
  else
    :invalid
  end
end

def valid_triangle?(a, b, c)
  sides = [a, b, c]

  if sides.include?(0)
    false
  else
    sides.sum > 2 * sides.max
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
