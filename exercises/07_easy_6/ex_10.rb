def triangle(size)
  (1..size).each { |star| puts ' ' * (size - star) + '*' * star }
end

triangle(5)
puts '------------'
triangle(9)

# Further exploration

def triangle_upside_down(size)
  (0..(size - 1)).each { |white| puts '*' * (size - white) + ' ' * white }
end

puts '------------'
triangle_upside_down(5)
puts '------------'

def triangle_anywhere(n, corner)
  case corner
  when 'down_right' then (1..n).each { |s| puts ' ' * (n - s) + '*' * s }
  when 'up_left' then (0..(n - 1)).each { |w| puts '*' * (n - w) + ' ' * w }
  when 'down_left' then (1..n).each { |s| puts '*' * s + ' ' * (n - s) }
  when 'up_right' then (0..(n - 1)).each { |w| puts ' ' * w + '*' * (n - w) }
  else puts "I didn't understand your input, sorry!"
  end
end

triangle_anywhere(3, 'down_right')
puts '------------'
triangle_anywhere(3, 'up_left')
puts '------------'
triangle_anywhere(3, 'down_left')
puts '------------'
triangle_anywhere(3, 'up_right')
