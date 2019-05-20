def prompt(message)
  puts "=># #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when '1' then "Adding"
  when '2' then 'Substracting'
  when '3' then "Multiplying"
  when '4' then 'Dividing'
  end
end

prompt "Welcome to Calculator! Enter your name:"

name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt "Make sure to use a valid name!"
  else
    break
  end
end

prompt "Hi #{name}!"

loop do # main loop
  number1 = ''
  loop do
    prompt "What's the first number?"
    number1 = gets.chomp
    if valid_number?(number1)
      break
    else
      prompt "Hmmm... Something doesn't look right"
    end
  end

  number2 = ''

  loop do
    prompt "What's the second number?"
    number2 = gets.chomp
    if valid_number?(number2)
      break
    else
      prompt "Hmmm... Something doesn't look right"
    end
  end

  operator_prompt = <<-MSG
What operation would you like to perform?
    1) add
    2) substract
    3) multiply
    4) divide
  MSG

  prompt operator_prompt
  operator = ''

  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt "Must choose 1, 2, 3 or 4"
    end
  end

  prompt "#{operation_to_message(operator)} the two numbers..."

  result =  case operator
            when '1'
              number1.to_i + number2.to_i
            when '2'
              number1.to_i - number2.to_i
            when '3'
              number1.to_i * number2.to_i
            when '4'
              number1.to_f / number2.to_f
            end

  prompt "The result is #{result}"
  prompt "Do you want to perform another calculation? (Y to calculate again)"
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt("Thanks #{name} for using our calculator!")
