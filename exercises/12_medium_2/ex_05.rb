# Triangles
# - Equilateral: 3 sides are equal
# - Isosceles: 2 sides are equal length and third is different
# - Scalene: 3 sides are of different length

# Valid triangle
# 1. The sum of the lengths of the two shortest sides must be
# greater than the length of the longest side
# 2. All sides must have length greater then 0

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
  if (a || b || c).zero?
    false
  else
    max = [a, b, c].max
    min = [a, b, c].min(2).sum

    min > max
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
