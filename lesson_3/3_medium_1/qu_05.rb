# Question 5

def fib(first_num, second_num)
  limit = 15
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# The `limit` variable must be inside the method definition, otherwise,
# it can't be accessed within the while loop.

# Other possibility: to pass the limit as an argument to the `fib` method.
