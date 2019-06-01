# Write a method that will take a short line of text, and print it within a box
# You may assume that the input will always fit in your terminal window.

MAX_WIDTH = 60

def border(width)
  puts '+' + '-' * width + '+'
end

def margin(width)
  puts '|' + ' ' * width + '|'
end

def print_small_text(text, width)
  border(width)
  margin(width)
  puts '| ' + text + ' |'
  margin(width)
  border(width)
end

def print_in_box(text)
  width = text.size + 2
  if width < MAX_WIDTH
    print_small_text(text, width)
  else
    print_large_text(text)
  end
end

def print_text(text, number_of_spaces)
  puts '| ' + text + ' ' * number_of_spaces + ' |'
end

def slice_large_text(text)
  until text.empty?
    line = text.slice!(0, MAX_WIDTH - 2)
    next print_text(line, 0) if line.size == MAX_WIDTH - 2
    print_text(line, MAX_WIDTH - 2 - line.size)
  end
end

def print_large_text(text)
  border(MAX_WIDTH)
  margin(MAX_WIDTH)
  slice_large_text(text)
  margin(MAX_WIDTH)
  border(MAX_WIDTH)
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

print_in_box('hello darkness, my old friend')
# +-------------------------------+
# |                               |
# | hello darkness, my old friend |
# |                               |
# +-------------------------------+

puts "----------------------------------------"

print_in_box("hello darkness, my old friend, i've come to talk with you again")
# +-----------------------------------------------------------+
# |                                                           |
# | hello darkness, my old friend, I've come to talk with you |
# | again                                                     |
# |                                                           |
# +-----------------------------------------------------------+
