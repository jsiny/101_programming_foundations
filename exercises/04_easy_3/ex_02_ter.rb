def arithmetic
  puts '==> Enter the first number:'
  first = gets.chomp.to_i

  puts '==> Enter the second number:'
  second = gets.chomp.to_i

  operations = {  '+' => first + second,
                  '-' => first - second,
                  '*' => first * second,
                  '/' => first / second,
                  '%' => first % second,
                  '**' => first**second
  }

  operations.each do |k, v|
    puts "#{first} #{k} #{second} = #{v}"
  end
end

arithmetic
