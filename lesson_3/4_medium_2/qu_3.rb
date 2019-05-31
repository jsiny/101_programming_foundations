# QUESTION 3

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"  # pumpkins
puts "My array looks like this now: #{my_array}"    # ["pumpkins", "rutabaga"]

# The reason behind this difference is the destructive nature of `Array#<<`
# vs the non-destructiveness of reassignment (+=)

# It's only inside the tricky_method that `a_string_param` is equal to
# "pumpkinsrutabaga". But as `a_string_param` was not mutated, `my_string`
# only refers to "pumpkins".