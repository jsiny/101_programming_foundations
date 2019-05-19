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


I don't understand this assessment.


=end
