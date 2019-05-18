def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4,5,6)

=begin
First, I'll look up the Syntax documentation for calling methods:
https://docs.ruby-lang.org/en/2.6.0/syntax/calling_methods_rdoc.html

This documentation explains that in case of optional arguments, ruby fills
in the missing arguments from left to right.

First, Ruby assesses that there are only 3 arguments instead of 4,
with 2 default values. 
Then 4 is assigned to a.
Then 6 is assigned to d.
This leaves only 1 value to the arguments with default values.
Since b is more on the left, 5 is assigned to b.
c uses its default value of 3.

Therefore, the following is printed: [4, 5, 3, 6]
=end