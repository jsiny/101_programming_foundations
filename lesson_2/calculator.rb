require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
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
              when '1' then messages('adding', LANGUAGE)
              when '2' then messages('substracting', LANGUAGE)
              when '3' then messages('multiplying', LANGUAGE)
              when '4' then messages('dividing', LANGUAGE)
              end
  operation
end

prompt('welcome')

name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt("valid_name")
  else
    break
  end
end

puts format(messages('hello', LANGUAGE), name: name)

loop do # main loop
  number1 = ''
  loop do
    prompt('first_number')
    number1 = gets.chomp
    break if number?(number1)
    prompt('valid_number')
  end

  number2 = ''

  loop do
    prompt('second_number')
    number2 = gets.chomp
    break if number?(number2)
    prompt('valid_number')
  end

  prompt('operation')
  operator = ''

  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('valid_operator')
    end
  end

  puts format(
    messages('processing', LANGUAGE),
    operating: operation_to_message(operator)
  )

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

  puts format(messages('result', LANGUAGE), result: result)
  prompt('again')
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

puts format(messages('thanks', LANGUAGE), name: name)
