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

puts '---------'

# More elegant method

def diamond_2(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0)  { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)    { |distance| print_row(grid_size, distance) }
end

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

diamond_2(5)

#   *
#  ***
# *****
#  ***
#   *

puts '---------'

# Further Exploration

def outlined_diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0)  { |distance| print_outlined_row(grid_size, distance) }
  1.upto(max_distance)    { |distance| print_outlined_row(grid_size, distance) }
end

def print_outlined_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = if number_of_stars == 1
            '*'
          else
            '*' + ' ' * (number_of_stars - 2) + '*'
          end
  puts stars.center(grid_size)
end

outlined_diamond(5)

#   *
#  * *
# *   *
#  * *
#   *

puts '---------'

outlined_diamond(9)

#     *
#    * *
#   *   *
#  *     *
# *       *
#  *     *
#   *   *
#    * *
#     *
