def fizzbuzz(start_num, end_num)
  result = []
  start_num.upto(end_num) do |num|
    result << add_value_depending_on_divisibility(num)
  end
  p result.join(', ')
end

def divisible_by?(divisor, num)
  (num % divisor).zero?
end

def add_value_depending_on_divisibility(num)
  if divisible_by?(3, num) && divisible_by?(5, num)
    'FizzBuzz'
  elsif divisible_by?(3, num)
    'Fizz'
  elsif divisible_by?(5, num)
    'Buzz'
  else
    num
  end
end

fizzbuzz(1, 15)
# -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# By using a case statement (cleaner)

def fizzbuzz_value(num)
  case
  when divisible_by?(3, num) && divisible_by?(5, num) then 'FizzBuzz'
  when divisible_by?(3, num) then 'Fizz'
  when divisible_by?(5, num) then 'Buzz'
  else num
  end
end

def fizzbuzz_2(start_num, end_num)
  result = []
  start_num.upto(end_num) do |num|
    result << fizzbuzz_value(num)
  end
  p result.join(', ')
end

fizzbuzz_2(1, 15)
