def ask_number
  puts '==> Enter a number:'
  gets.chomp.to_i
end

def arithmetic
  first = ask_number
  second = ask_number

  operations = {  '+' => first + second,
                  '-' => first - second,
                  '*' => first * second,
                  '/' => first / second,
                  '%' => first % second,
                  '**' => first**second }

  operations.each { |k, v| puts "#{first} #{k} #{second} = #{v}" }
end

arithmetic
