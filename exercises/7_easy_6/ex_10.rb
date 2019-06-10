def triangle(size)
  (1..size).each { |star| puts ' ' * (size - star) + '*' * star }
end

triangle(5)
triangle(9)

# Further exploration

def triangle_upside_down(size)
  (0..(size - 1)).each { |white| puts '*' * (size - white) + ' ' * white }
end

triangle_upside_down(5)
