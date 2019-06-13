# Sorting

## 5. The `sort` method

Try to figure tout what would be returned here:

```ruby
['arc', 'bat', 'cape', 'ants', 'cap'].sort
```

The following array is returned:

```ruby
['ants', 'arc', 'bat', 'cap', 'cape']
```

Indeed, `String#sort` sorts by alphabetical order (when called without a block).
If two strings of different lengths have the same beginning (as is the case
with `'cap'` and `'cape'`), then the longest string is considered greater than
the shortest, and therefore the alphabetical order is shortest then longest.

---

See if you could work out what would be returned when `sort` is called on this
array of arrays:

```ruby
[['a', 'cat', 'b', 'c'], ['b', 2], ['a', 'car', 'd', 3], ['a', 'car', 'd']].sort
```

The following array is returned:

```ruby
[['a', 'car', 'd'], ['a', 'car', 'd', 3], ['a', 'cat', 'b', 'c'], ['b', 2]]
```

`Array#sort` compares the first element of two arrays and moves on to the next
element if the first elements are identical. Since 3 arrays start with `'a'`,
we're certain that the array starting with `'b'` is last.

In case of identical elements, the longest array is the greatest.

Usually, comparing strings with integers would raise an ArgumentError.
In this present case, the integers are never evaluated by themselves and
no error is raised.
