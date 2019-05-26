# Question 2

1. What is `!=` and where should you use it?

`!=` is a logical operator which means "not equal to".
It should be used in conditional statements, like:

```ruby
if a != 3
  # do something
end

# This expression will only be evaluated if `a` is different from 3.
```

2. Put `!` before something, like `!user_name`

A `!` before an expression is used to negate that expression.

```ruby
!true
# => false

!(1 > 3)
# => true
```

3. Put `!` after something, like `words.uniq!`

This exclamation point (or `bang`) is pure convention.
In Ruby, it is usual that destructive methods end with an `!`, and
that's what happens here with the `uniq!` method.
This exclamation point is a part of the method's name, and
adding `!` to a method will not make it destructive!

4. Put `?` before something

In Ruby, we use a question mark in the ternary operator
syntax `? :` (ie. an if/else statement in one line).

```ruby
puts 3 > 2 ? "3 is greater!" : "2 is greater"
# => 3 is greater
```

5. Put `?` after something

A question mark at the end of a method name is another syntax
convention in Ruby, which simply means that this method is supposed
to return a boolean value.

```ruby
"hello".empty?
# => false
```

6. Put `!!` before something, like `!!user_name`

Prepending two exclamation points before an expression is used to
return the truthiness value of the expression (as you would in a
conditional statement).

```ruby
user_name = 'Maya'
!!user_name
# => true
```
