# Working with Blocks

## Example 1

```ruby
[[1, 2], [3, 4]].each do |arr|
  puts arr.first
end

# 1
# 3
# => [[1, 2], [3, 4]]
```

* The `Array#each` method is being called on the multi-dimensional array
`[[1, 2], [3, 4]]`
* Each inner array is passed to the block in turn, and assigned to the local
variable `arr`.
* The `Array#first` method is called on `arr` and returns the object at index
0 (in this case, the integers `1` and `3` respectively)
* The `puts` method then outputs a string representation of the integer
* `puts` return `nil` and, since this is the last evaluated statement within the
block, the return value of the block is therefore `nil`.
* `each` doesn't do anything with this return value though
* The return value of `each` is the calling object (`[[1, 2], [3, 4]]`) and this
is what is ultimately returned.

## 3. Example 3

```ruby
[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

1
3
# => [1, 3]
```

| Line | Action                | Object                          | Side Effect                                 | Return Value                    | Is Return Value used?                                |
| ---- | --------------------- | ------------------------------- | ------------------------------------------- | ------------------------------- | ---------------------------------------------------- |
| 1    | method call (`map`)   | The outer array                 | None                                        | A new array `[1, 3]`            | No, but shown on line 7                              |
| 1-4  | block execution       | Each sub-array                  | None                                        | Integer at index 0 of sub-array | Yes, used by `map` for transformation                |
| 2    | method call (`first`) | Each sub-array                  | None                                        | Element at index 0 of sub-array | Yes, by `puts`                                       |
| 2    | method call (`puts`)  | Element at index 0 of sub-array | Outputs string representation of an integer | `nil`                           | No                                                   |
| 3    | method call (`first`) | Each sub-array                  | None                                        | Element at index 0 of sub-array | Yes, used to determine the return value of the block |

## 4. Example 4

```ruby
my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

18
7
12
# => [[18, 7], [3, 12]]
```

| Line | Action                | Object                                                       | Side Effect                                   | Return Value                                          | Is Return Value used?                                        |
| ---- | --------------------- | ------------------------------------------------------------ | --------------------------------------------- | ----------------------------------------------------- | ------------------------------------------------------------ |
| 1    | variable assignment   | n/a                                                          | None                                          | `[[18, 7], [3, 12]]`                                  | No                                                           |
| 1    | method call (`each`)  | The outer array: `[[18, 7], [3, 12]]`                        | None                                          | The calling object: `[[18, 7], [3, 12]]`              | Yes, used for variable assignment to `my_var`                |
| 1-7  | outer block execution | Each sub-array                                               | None                                          | Each sub-array                                        | No                                                           |
| 2    | method call (`each`)  | Each sub-array                                               | None                                          | The calling object (inner array in current iteration) | Yes, to determine the return value of the outer block        |
| 2-6  | inner block execution | Element of the sub-array in that iteration                   | None                                          | `nil`                                                 | No                                                           |
| 3    | comparison (`>`)      | Element of the sub-array in that iteration                   | None                                          | Boolean                                               | Yes, evaluated by `if`                                       |
| 3-5  | conditional (`if`)    | Element of the sub-array in that iteration                   | None                                          | `nil`                                                 | Yes, used to determine the return value of the inner block   |
| 4    | method call (`puts`)  | Each integer that returns `true` to the conditional statement | Outputs a string representation of an integer | `nil`                                                 | Yes, used to determine the return value of the conditional statement |

## 5. Example 5

```ruby
[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

# => [[2, 4], [6, 8]]
```

| Line | Action                | Object                                     | Side Effect | Return Value                            | Is Return Value used?                            |
| ---- | --------------------- | ------------------------------------------ | ----------- | --------------------------------------- | ------------------------------------------------ |
| 1    | method call (`map`)   | The original array `[[1, 2], [3, 4]]`      | None        | A new array: `[[2, 4], [6, 8]]`         | No                                               |
| 1-5  | outer block execution | Each sub-array                             | None        | A new array: `[[2, 4], [6, 8]]`         | Yes, by top-level `map`  for transformation      |
| 2    | method call (`map`)   | Each sub-array at the current iteration    | None        | Two new arrays:  `[2, 4]` then `[6, 8]` | Yes, to determine the outer block's return value |
| 2-4  | inner block execution | Element of the sub-array in that iteration | None        | A new integer                           | Yes, by inner `map` for transformation           |
| 3    | `num * 2`             | n/a                                        | None        | A new integer                           | Yes, to determine the inner block's return value |

## 6. Example 6

```ruby
[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end

# => [{ :c => "cat" }]
```

| Line | Action                 | Object                                  | Side Effect | Return Value                | Is Return Value used?                            |
| ---- | ---------------------- | --------------------------------------- | ----------- | --------------------------- | ------------------------------------------------ |
| 1    | method call (`select`) | The original hash                       | None        | A new array: `[{c: 'cat'}]` | No                                               |
| 1-5  | outer block execution  | Each hash                               | None        | A new hash: `{c: 'cat'}`    | Yes, to determine `select`'s return value        |
| 2    | method call (`all?`)   | Each hash                               | None        | Boolean                     | Yes, to determine the outer block's return value |
| 2-4  | inner block execution  | Each key-value pair in the current hash | None        | Boolean                     | Yes, to determine `all?`'s return value          |
| 3    | method call (`to_s`)   | Each key in the current hash            | None        | A string                    | Yes, to perform comparison                       |
| 3    | comparison (`==`)      | Each key-value pair in the current hash | None        | Boolean                     | Yes, to determine the inner block's return value |

* First outer block iteration:
  * For `{a: 'ant'}`, `value[0] == key.to_s` returns `true`
  * For `{b: 'elephant'}`, `value[0] == key.to_s` returns `false`
  * For `{ a: 'ant', b: 'elephant' }`, `hash.all?` therefore returns `false`.
  * This hash is therefore not selected by `select`
* Second outer block iteration:
  * For `{c: 'cat'}`, `value[0] == key.to_s` returns `true`
  * For `{c: 'cat'}`, `hash.all?` therefore returns `true`
  * The hash is therefore selected by `select`

* Method call: `select` returns a new hash: `{c: 'cat'}`

If we used `any?` instead of `all?` in line 2, the return value of `select`
would be the new array `[{ a: 'ant', b: 'elephant' }, { c: 'cat' }]`, because
`hash.any?` would return `true` for both iterations (as there is at least one
element returning `true`  in the inner block execution).