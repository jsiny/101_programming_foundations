def valid_integer?(num)
  num == num.to_s.to_i && num > 0
end

def ask_num
  num = 0
  loop do
    puts '>> Please enter an integer greater than 0:'
    num = gets.chomp.to_i
    break if valid_integer?(num)
    puts ">> Sorry, this input isn't correct."
  end
  num
end

def ask_operation
  operation = ''
  loop do
    puts ">> Enter 's' to compute the sum, 'p' to compute the product."
    operation = gets.chomp
    break if %w(s p).include?(operation)
    puts ">> Sorry, this input isn't correct."
  end
  operation
end

def sum_or_product(num, operation)
  case operation
  when 's'
    sum = (1..num).reduce(:+)
    puts "The sum of the integers between 1 and #{num} is #{sum}."
  when 'p'
    product = (1..num).reduce(:*)
    puts "The product of the integers between 1 and #{num} is #{product}."
  else "Sorry, I didn't understand"
  end
end

num = ask_num
operation = ask_operation
puts sum_or_product(num, operation)
