# QUESTION 3 / PART C

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"       # two
puts "two is: #{two}"       # three
puts "three is: #{three}"   # one

# Here, instead of a reassignement, the destructive method
# gsub! is used.
# Therefore, the original objects passed to the methods are
# permanently changed by the method.
# As such, the one variable now points to the "two" string, etc.
