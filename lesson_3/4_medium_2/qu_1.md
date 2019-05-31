# Question 1

Here is the (long) method definition we'll examine:

```ruby
def fun_with_ids
  a_outer = 42
  b_outer = "forty two"
  c_outer = [42]
  d_outer = c_outer[0]

  a_outer_id = a_outer.object_id
  b_outer_id = b_outer.object_id
  c_outer_id = c_outer.object_id
  d_outer_id = d_outer.object_id

  # OUT OF THE BLOCK
  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block."
  puts

  1.times do
    a_outer_inner_id = a_outer.object_id
    b_outer_inner_id = b_outer.object_id
    c_outer_inner_id = c_outer.object_id
    d_outer_inner_id = d_outer.object_id

    # INSIDE THE BLOCK
    puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer_inner_id} inside the block."
    puts "b_outer id was #{b_outer_id} before the block and is: #{b_outer_inner_id} inside the block."
    puts "c_outer id was #{c_outer_id} before the block and is: #{c_outer_inner_id} inside the block."
    puts "d_outer id was #{d_outer_id} before the block and is: #{d_outer_inner_id} inside the block."
    puts

    a_outer = 22
    b_outer = "thirty three"
    c_outer = [44]
    d_outer = c_outer[0]

    # AFTER REASSIGNMENT
    puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."
    puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after."
    puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after."
    puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after."
    puts

    a_inner = a_outer
    b_inner = b_outer
    c_inner = c_outer
    d_inner = c_inner[0]

    a_inner_id = a_inner.object_id
    b_inner_id = b_inner.object_id
    c_inner_id = c_inner.object_id
    d_inner_id = d_inner.object_id

    # COMPARISON WITH OUTER SCOPE
    puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)."
    puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)."
    puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)."
    puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer)."
    puts
  end

  # COMPARISON OF OUTER SCOPES
  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block."
  puts

  # COMPARISON OF INNER SCOPES
  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
end
```

Let's run it part by part:

### 1. Out of the block:

```ruby
puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block."
puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block."
puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block."
puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block."
```

Note that `a_outer` and `d_outer` are identical as they both refer to `42`.
As such, they should have the same `x_outer_id`.

This program outputs:

```
a_outer is 42 with an id of: 85 before the block.
b_outer is forty two with an id of: 20471520 before the block.
c_outer is [42] with an id of: 20471500 before the block.
d_outer is 42 with an id of: 85 before the block.
```

Nothing too surprising here. We simply obtain the object IDs of the 4 objects under scrutiny,
and outputs them using string interpolation. Additionally, we do obtain the same ID for
`a_outer` and `d_outer`.

### 2. Inside the block:

```ruby
puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer_inner_id} inside the block."
puts "b_outer id was #{b_outer_id} before the block and is: #{b_outer_inner_id} inside the block."
puts "c_outer id was #{c_outer_id} before the block and is: #{c_outer_inner_id} inside the block."
puts "d_outer id was #{d_outer_id} before the block and is: #{d_outer_inner_id} inside the block."
```

We create 4 new variables (`x_outer_inner_id`) and assign them to the same object
that the previous variables (`x_outer.object_id`).
As such, these 4 new variables should have the same object ID than `x_outer_id`.

*Note:* `x_outer.object_id` is available inside the block because the inner scope of a block
can access the outer scope (the method definition).

These `puts` statements output the following:

```
a_outer id was 85 before the block and is: 85 inside the block.
b_outer id was 20471520 before the block and is: 20471520 inside the block.
c_outer id was 20471500 before the block and is: 20471500 inside the block.
d_outer id was 85 before the block and is: 85 inside the block.
```

This is coherent with what we expected: the object IDs remain the same before the block
and inside the block.

### 3. After reassignment

```ruby
a_outer = 22
b_outer = "thirty three"
c_outer = [44]
d_outer = c_outer[0]

puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."
puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after."
puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after."
puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after."
```

The 4 variables `x_outer` are reassigned to 4 new values.
As reassignment is non-mutative, we can assume that the object IDs of these variables
have changed. Therefore, `x_outer.object_id` should have completely new values.
Additionally, as `a_outer` and `d_outer` refer now to different objects
(respectively `22` and `44`), their object_id should be different from now on.

On the contrary, `x_object_id` should still reference the same old object IDs we had
in stages 1 and 2. We can note that we're here using the object IDs from outside the block
and this works because of the flexible scoping rules of blocks.

These statements output the following:

```
a_outer inside after reassignment is 22 with an id of: 85 before and: 45 after.
b_outer inside after reassignment is thirty three with an id of: 20471520 before and: 20470760 after.
c_outer inside after reassignment is [44] with an id of: 20471500 before and: 20470740 after.
d_outer inside after reassignment is 44 with an id of: 85 before and: 89 after.
```

As expected, the object IDs have changed before and after the reassignment.
We find the exact same IDs for the "before" values and entirely new ones for the "after".

### 4. Comparison with outer scope

```ruby
a_inner = a_outer
b_inner = b_outer
c_inner = c_outer
d_inner = c_inner[0]

a_inner_id = a_inner.object_id
b_inner_id = b_inner.object_id
c_inner_id = c_inner.object_id
d_inner_id = d_inner.object_id

puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)."
puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)."
puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)."
puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer)."
```

We create 4 new variables (`x_inner`) and point them to the same objects that
`x_outer` (that is: `22`, `"thirty three"`, `[44]`, `44`).

As such, their object IDs (`x_inner_id`) should be identical to the `x_outer.object_id`
from stage 3, because we're still inside the block and `x_outer` refers to the variables
inside the block instead of those outside.

The program outputs the following:

```
a_inner is 22 with an id of: 45 inside the block (compared to 45 for outer).
b_inner is thirty three with an id of: 20470760 inside the block (compared to 20470760 for outer).
c_inner is [44] with an id of: 20470740 inside the block (compared to 20470740 for outer).
d_inner is 44 with an id of: 89 inside the block (compared to 89 for outer).
```

This is coherent with our expectations: both `x_inner_id` and `x_outer.object_id` are
identical.

### 5. Comparison of outer scopes

We are now *after* the block:

```ruby
puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block."
puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block."
puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block."
puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block."
```

Here, the `x_outer` variables refer to the objects reassigned within the block.
As such, `x_outer.object_id` will output the same object ID as in stage 3.
On the other hand, `x_outer_id` has only been defined at the beginning of the method
definition and thus still refers to the (original) object IDs. We should obtain
here the same IDs as in stage 1 and 2.

The output is coherent:

```
a_outer is 22 with an id of: 85 BEFORE and: 45 AFTER the block.
b_outer is thirty three with an id of: 20471520 BEFORE and: 20470760 AFTER the block.
c_outer is [44] with an id of: 20471500 BEFORE and: 20470740 AFTER the block.
d_outer is 44 with an id of: 85 BEFORE and: 89 AFTER the block.
```

### 6. Comparison of inner scopes

```ruby
puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
```
The `x_inner` variables are initialized within the block and as such, are unaccessible
outside of it.
Therefore, this program will only print `ugh ohhhhh`.

The output is that indeed:
```
ugh ohhhhh
ugh ohhhhh
ugh ohhhhh
ugh ohhhhh
```

That's all folks!