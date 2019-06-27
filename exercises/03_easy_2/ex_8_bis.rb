VALID_OPERATIONS = %w(s p).freeze

def sum_or_product
  n = valid_integer
  operation = valid_operation
  display_result(operation, n)
end

def valid_integer
  n = 0

  loop do
    puts '>> Please enter an integer greater than 0'
    n = gets.chomp
    break if n.to_i.to_s == n && n.to_i > 0
    puts '>> Invalid input'
  end
  n.to_i
end

def valid_operation
  operation = ''

  loop do
    puts ">> Enter 's' to compute the sum, 'p' to compute the product."
    operation = gets.chomp.downcase
    break if VALID_OPERATIONS.include?(operation)
    puts '>> Invalid input'
  end
  operation
end

def sum(n)
  (1..n).inject(:+)
end

def product(n)
  (1..n).inject(1, :*)
end

def display_result(operation, n)
  case operation
  when 's'
    result = sum(n)
    puts ">> The sum of the integers between 1 and #{n} is #{result}."
  when 'p'
    result = product(n)
    puts ">> The product of the integers between 1 and #{n} is #{result}."
  end
end

sum_or_product
