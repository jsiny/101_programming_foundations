def diamond(size)
  print_upper_diamond(size)
  print_lower_diamond(size)
end

def print_upper_diamond(size)
  number_of_stars = 1

  loop do
    number_of_whitespace = (size - number_of_stars) / 2
    puts ' ' * number_of_whitespace + '*' * number_of_stars
    number_of_stars += 2
    break if number_of_stars > size
  end
end

def print_lower_diamond(size)
  number_of_stars = size - 2

  loop do
    break if number_of_stars <= 0
    number_of_whitespace = (size - number_of_stars) / 2
    puts ' ' * number_of_whitespace + '*' * number_of_stars
    number_of_stars -= 2
  end
end

diamond(1)

# *

puts '---------'

diamond(3)

#  *
# ***
#  *

puts '---------'

diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *
