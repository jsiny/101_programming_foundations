# QUESTION 4

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"    # => 'pumpkinsrutabaga'
puts "My array looks like this now: #{my_array}"      # => ["pumpkins"]

# my_string is modified, while my_array isn't.

# In both cases, only the reference to  `my_string` and `my_array` are passed
# to tricky_method_two.
# New variables are created inside the method (a_string_param, an_array_param)
# that point to the exact same objects than my_string and my_array.

# The difference lies in the method applied to both variables:
# - String#<< is a mutative method, which means that it modified the object
# referenced by a_string_parem. This change is therefore also seen on my_string,
# as both my_string and a_string_param refer to the same object space.
# - Array#=[] is not a destructive method, therefore this method call created
# a new String object and assigned it to an_array_param (which thus stopped
# refering to the same object than my_array).

