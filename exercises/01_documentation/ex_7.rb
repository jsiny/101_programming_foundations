s = 'abc'
puts s.public_methods(false).inspect

# First, let's learn more about #public_methods
# Turns out it's an Object method => Object#public_methods
# https://docs.ruby-lang.org/en/2.6.0/Object.html#method-i-public_methods

# The documentation tells us that this method returns the list of public
# methods accessible to an object, and that we can set its parameter to
# false to select only the methods in the receiver.

# In other words, if I want to know which methods are available for 
# a String object without its parent methods, I can simply pass "false"
# as an argument to public_methods.