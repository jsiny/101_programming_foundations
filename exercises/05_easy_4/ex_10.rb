def integer_to_string(integer)
  integer.digits.reverse.join
end

def signed_integer_to_string(integer)
  case integer <=> 0
  when -1 then '-' + integer_to_string(-integer)
  when 1  then '+' + integer_to_string(integer)
  else integer_to_string(integer)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
