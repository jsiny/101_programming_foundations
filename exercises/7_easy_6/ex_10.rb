def triangle(size)
  (1..size).each { |star| puts ' ' * (size - star) + '*' * star }
end

triangle(5)
triangle(9)
