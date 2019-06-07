# Ruby Collections

## 1. Element Reference
### 1.1 String Element Reference

How would you reference 'grass' from within this string?

```ruby
str = 'The grass is green'
str[4, 5]
# => 'grass'
```

### 1.2 Array Element Reference

What do you think would be returned here?

```ruby
arr = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
arr[2, 3]
# => ['c', 'd', 'e']
arr[2, 3][0]
# => 'c'
```

### 1.3 Hash Element Reference

```ruby
 hsh = { 'fruit' => 'apple', 'vegetable' => 'carrot', 'fruit' => 'pear' }
(irb):9: warning: key "fruit" is duplicated and overwritten on line 9
 => {"fruit"=>"pear", "vegetable"=>"carrot"}
 ```

The last occurrence of the key `'fruit'` overwrites the first occurrence.
The hash only has 2 key-value pairs instead of 3.

### 1.4 Element Reference Gotchas

#### 1.4.1 Out-of-Bounds Indices

#### 1.4.2 Negative Indices

What do you think would be returned by the following calls?

```ruby
str = 'ghijk'
arr = ['g', 'h', 'i', 'j', 'k']

str[-6]   # => nil
arr[-6]   # => nil
```
#### 1.4.3 Invalid Hash Keys

## 2. Conversion

### 2.1 Strings and Arrays

```ruby
str = 'How do you get to Carnegie Hall?'
# => "How do you get to Carnegie Hall?"

str.chars.join
# => "How do you get to Carnegie Hall?"

str.split.join(' ')
# => "How do you get to Carnegie Hall?"
 ```

### 2.2 Arrays and Hashes

```ruby
arr = [[:name, 'Joe'], [:age, 10], [:favorite_color, 'blue']]
arr.to_h
# => {:name=>"Joe", :age=>10, :favorite_color=>"blue"}
```

## 3. Element Assignment

### 3.1 String Element Assignment

### 3.2 Array Element Assignment

```ruby
arr = [1, 2, 3, 4, 5]
arr.map { |n| n += 1 }
# => [2, 3, 4, 5, 6]
```

### 3.3 Hash Element Assignment

```ruby
hsh = { apple: 'Produce', carrot: 'Produce', pear: 'Produce', broccoli: 'Produce' }
# => {:apple=>"Produce", :carrot=>"Produce", :pear=>"Produce", :broccoli=>"Produce"}

hsh[:apple] = 'Fruit'
hsh[:carrot] = 'Veggie'
hsh[:pear] = 'Fruit'
hsh[:broccoli] = 'Veggie'

hsh
# => {:apple=>"Fruit", :carrot=>"Veggie", :pear=>"Fruit", :broccoli=>"Veggie"}
```
