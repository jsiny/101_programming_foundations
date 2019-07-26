def border(size)
  '+' + '-' * size + '+'
end

def side(size)
  '|' + ' ' * size + '|'
end

def print_in_box(str)
  size = str.size + 2

  puts border(size)
  puts side(size)
  puts '| ' + str + ' |'
  puts side(size)
  puts border(size)
end

print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
