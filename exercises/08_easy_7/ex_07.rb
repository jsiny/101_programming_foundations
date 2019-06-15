def show_multiplicative_average(numbers)
  average = 1.to_f
  numbers.each { |n| average *= n }
  average /= numbers.size
  puts "The result is #{format('%.3f', average)}"
end

show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([6])
# The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667

# Further Exploration

# If we omit to include the `to_f` method in line 2, we obtain rounded results
# with 3 `0` decimals => for instance, 7.000
