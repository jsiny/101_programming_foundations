require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts "==> #{message}"
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  /\d/.match(num) && /^\d*\.?\d*$/.match(num)
end

def number?(num)
  integer?(num) || float?(num)
end

def operation_to_message(op)
  operation = case op
              when '1' then "Adding"
              when '2' then 'Substracting'
              when '3' then "Multiplying"
              when '4' then 'Dividing'
              end
  operation
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt(MESSAGES["valid_name"])
  else
    break
  end
end

prompt "Hi #{name}!"

loop do # main loop
  number1 = ''
  loop do
    prompt(MESSAGES['first_number'])
    number1 = gets.chomp
    break if number?(number1)
    prompt(MESSAGES['valid_number'])
  end

  number2 = ''

  loop do
    prompt(MESSAGES['second_number'])
    number2 = gets.chomp
    break if number?(number2)
    prompt(MESSAGES['valid_number'])
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
      prompt(MESSAGES['valid_operator'])
    end
  end

  prompt operation_to_message(operator) + MESSAGES['processing']

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
  prompt(MESSAGES['again'])
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt("Thanks #{name} for using our calculator!")
