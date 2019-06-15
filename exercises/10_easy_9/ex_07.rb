def swap_name(full_name)
  first_name, last_name = full_name.split
  "#{last_name}, #{first_name}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'

# One line method

def swap_name_2(name)
  name.split.reverse.join(', ')
end

p swap_name_2('Joe Roberts') == 'Roberts, Joe'
