# Practice Problems - Methods and More Methods

## 1. Practice Problem 1

What is the return value of the `select` method below?

```ruby
[1, 2, 3].select do |num|
  num > 5
  'hi'
end
```

This method returns `[1, 2, 3]` because `select` performs selection based on the
truthiness of the return value of the block.

In this case, the return value of the block is the last line's return value,
ie. `"hi"`. As everything is a truthy value in Ruby except `nil` and `false`,
`"hi"` is evaluated by `select` as true. Therefore, every element from the
initial collection is returned by the method.

## 2. Practice Problem 2

How does `count` treat the block's return value? How can we find out?

```ruby
['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end
```

`count` counts the number of elements for which the block returns a true value
(from the [Ruby documentation](https://docs.ruby-lang.org/en/2.6.0/Array.html#method-i-count)).

`count` only counts an element if the block's return value is truthy.

In this case, the block returns `true` for `ant` and `bat`, therefore
the program returns `2`.

## 3. Practice Problem 3

What is the return value of `reject` in the following code?

```ruby
[1, 2, 3].reject do |num|
  puts num
end
```

According to the [Ruby documentation](https://docs.ruby-lang.org/en/2.6.0/Array.html#method-i-reject),
`reject` returns a new array containing the items for which the given block are
**not** `true`.

In this case, the block's return value is `nil` (`puts` always returns `nil`).
As `nil` is by definition `not true`, every element in the array is inserted
into the new collection.

Therefore, this program returns `[1, 2, 3]`.

## 4. Practice Problem 4

What is the return value of `each_with_object` in the following code? Why?

```ruby
['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
```

First, we know that this program's return value will be a `Hash`, as indicated
by `each_with_object`'s method argument `{}`.

`value[0]` is the first character in the string (ie. `a` for `ants`).

Therefore, this method creates a hash with the first letter of the intial
string as the key, and the string as the value.

This method's return value is:

```ruby
{ 'a' => 'ant', 'b' => 'bear', 'c' => 'cat' }
```

## 5. Practice Problem 5

What does `shift` do in the following code? How can we find out?

```ruby
hash = { a: 'ant', b: 'bear' }
hash.shift
```

According to the [Ruby documentation](https://docs.ruby-lang.org/en/2.6.0/Hash.html#method-i-shift),
`Hash#shift` removes the first key-value pair from the initial hash and returns
it into a two-item array. This is a destructive method.

In this case, the method's return value is: `['a', 'ant']`.
The hash's value is now: `{ b: 'bear' }`.

## 6. Practice Problem 6

What is the return value of the following statement? Why?

```ruby
['ant', 'bear', 'caterpillar'].pop.size
```

`pop` removes (destructively) and returns the last element from the collection.
Therefore, `pop` returns `caterpillar`.

`String#size` returns the character length of the string it is called on
(here: `caterpillar`).

This program therefore returns `11`.

## 7. Practice Problem 7

What is the *block*'s return value in the following code? How is it determined?
Also, what is the return value of `any?` in this code and what does it output?

```ruby
[1, 2, 3].any? do |num|
  puts num
  num.odd?
end
```

The block's return value is determined by the last block line's return value
(here: `num.odd?`). `1.odd?` returns `true` (`1` *is* odd).

`any?` returns a boolean, and in this case, will return `true` because the block
evaluates to `true` at least once.

This code only outputs `1` (`puts num`) because the execution is stopped as soon
as the block returns `true`.

## . Practice Problem
## . Practice Problem