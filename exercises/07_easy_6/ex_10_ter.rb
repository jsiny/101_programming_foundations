def triangle(max)
  (1..max).each do |i|
    whites = max - i
    stars = i
    puts ' ' * whites + '*' * stars
  end
end

triangle(5)

#     *
#    **
#   ***
#  ****
# *****