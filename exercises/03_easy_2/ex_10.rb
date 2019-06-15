array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []

array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?("C", "S") }
puts array2

# This prints out:
# Moe
# Larry
# CURLY
# SHEMP
# Harpo
# CHICO
# Groucho
# Zeppo

# The reason is that the each loop copies the references from array1 to array2.
# Both arrays contain the same values AND the same String objects.
# If you modify one of those Strings, that modification will show up in both
# arrays.

