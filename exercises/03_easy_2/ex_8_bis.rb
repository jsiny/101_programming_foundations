def sum_or_product
  puts '>> Please enter an integer greater than 0'
  n = gets.to_i

  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp

  display_result(operation, n)
end

def sum(n)
  sum = 0
  (1..n).each { |i| sum += i }
  sum
end

def product(n)
  product = 1
  (1..n).each { |i| product *= i }
  product
end

def display_result(operation, n)
  case operation
  when 's'
    result = sum(n)
    puts "The sum of the integers between 1 and #{n} is #{result}."
  when 'p'
    result = product(n)
    puts "The product of the integers between 1 and #{n} is #{result}."
  else
    puts "Sorry, I didn't understand your request."
  end
end

sum_or_product
