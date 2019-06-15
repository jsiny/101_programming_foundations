5.step(to: 10, by: 3) { |value| puts value }

# First, I'll look for a step method that can be applied to an Integer.
# => Numeric#step

# #step takes two keyword arguments (= named arguments): :by and :to

# This method loops:
# > starts at 5
# > increments by steps of 3 (by:)
# > until the value exceeds the limit 10
# The block indicates what to do with those values (aka print them)

# Therefore, this code will print:
# 5
# 8