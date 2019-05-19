def find_greatest(number)

  return if number.nil?  
  saved_number = number.first

  
  number.each do |num|
    
    if saved_number >= num
      next
    else
      saved_number = num
    end
    
  end
  
  saved_number

end

a = [1, 485, 321, 785, 45, 1255, 4]
puts find_greatest(a)

puts find_greatest(nil)


# ---------------------------------------------------------------------------

=begin
>>> A method that returns the sum of two integers

Given 2 integers: num1 & num2
result = num1 + num2

--------------------------------

START

GET number1 = first integer
GET number2 = second integer

SET sum = number1 + number2

END


# ---------------------------------------------------------------------------

>>> A method that takes an array of strings, and returns a string that is 
all those strings concatenated together


- Given an array of strings
- Split the strings into an array while removing the spaces
- Join the array without adding new spaces

-----------------------------

START

SET sentence = array of strings

SET new_sentence = sentence.split(" ").join

END

# ---------------------------------------------------------------------------

>>> A method that takes an array of integers, and returns a new array with 
every other element


Example:
- input: [1, 2, 3, 4]
- output: [2, 4]

- Given an array of integers
- Iterate through this given array 
  - For index = even, skip the integer
  - For index = odd, push this integer to a new array
- Print the new array

---------------------------

START

SET initial_array = an array of integer
SET result_array = an empty array

LOOP through initial_array
  IF index is even then skip this iteration (next)
  ELSE push the integer to result_array
  END
END

PRINT result_array

END

=end
