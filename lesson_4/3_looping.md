# Looping

## 1. Controlling a Loop

```ruby
loop do
  number = rand(1..10)   # a random number between 1 and 10
  puts 'Hello!'
  if number == 5
    puts 'Exiting...'
    break
  end
end
```

This loop generates a random number between 1 and 10, then prints 'Hello!'
If the number is 5, the program prints 'Exiting...' and breaks out of the loop.

Therefore, the loop can have many or very few iterations (as long as it takes
to randomly generate 5)

## 2. Iteration

## 3. Break Placement

## 4. Next

## 5. Iterating over Collections

### 5.1 Strings

### 5.2 Arrays

```ruby
colors = ['green', 'blue', 'purple', 'orange']
counter = 0

loop do
  break if counter == colors.size
  puts "I'm the color #{colors[counter]}!"
  counter += 1
end
```

This program will output:

```ruby
I'm the color green!
I'm the color blue!
I'm the color purple!
I'm the color orange!
```
