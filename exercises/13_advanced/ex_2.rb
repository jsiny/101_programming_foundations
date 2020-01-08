def star(grid_size)
  max_distance = grid_size / 2
  max_distance.downto(1) { |i| print_row(grid_size, i) }
  puts '*' * grid_size
  1.upto(max_distance)   { |i| print_row(grid_size, i) }
end

def print_row(grid_size, distance)
  spaces = distance - 1
  string = Array.new(3, '*').join(' ' * spaces)
  puts string.center(grid_size)
end

star(7)

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *

star(9)

# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *

