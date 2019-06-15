name = "Bob"
save_name = name
name.upcase!
puts name, save_name

# This program prints out:
# BOB
# BOB

# The reason behind this is that String#upcase! is a destructive method.
# As such, it mutated the caller (name), which means that the space in 
# memory was changed.
# As save_name points to the same space in memory than name, a change in name
# is impacted on save_name
# That's why now save_name returns BOB.