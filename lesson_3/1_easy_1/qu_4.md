# Question 4

```ruby
numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1)
numbers.delete(1)
```

Both methods permanently delete an element from the `numbers` array and
return that element.

However, these methods differ on *which* element they've deleted.

* Array#delete_at uses the *index* of the array (in this case, index 1)
Therefore the value 2 is deleted

```ruby
numbers.delete_at(1)
# => 2
numbers
# [1, 3, 4, 5]
```

* Array#delete uses the *values* in the array to decide which element
is going to be deleted (in this case, value 1 at index 0).

```ruby
numbers.delete(1)
# => 1
numbers
# [2, 3, 4, 5]
```
