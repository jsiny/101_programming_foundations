# Question 1

```ruby
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
```

This expression prints out:

```ruby
1
2
2
3
```

because:

* `uniq` is non-destructive so it didn't impact the original array
* `puts` prints each element of an array on a new line
