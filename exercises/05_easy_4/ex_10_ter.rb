def integer_to_string(int)
  int.digits.reverse.join
end

def signed_integer_to_string(int)
  case
  when int > 0 then '+' + integer_to_string(int)
  when int < 0 then '-' + integer_to_string(- int)
  else                    integer_to_string(int)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
