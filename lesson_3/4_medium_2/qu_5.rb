# QUESTION 5

def color_valid(color)
  %w(blue green).include?(color)
end

p color_valid('blue')
p color_valid('green')
p color_valid('red')
