# Question 2

### 1. Before the method call

```ruby
a_outer = 42
b_outer = "forty two"
c_outer = [42]
d_outer = c_outer[0]

a_outer_id = a_outer.object_id
b_outer_id = b_outer.object_id
c_outer_id = c_outer.object_id
d_outer_id = d_outer.object_id

puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the method call ."
puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the method call."
puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the method call."
puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the method call."
```

As in the previous exercise, we initiate 4 variables (`x_outer`) and assign
their Object ID to 4 other variables (`x_outer_id`).
Additionally, `a_outer` and `d_outer` are identical (as they both refer to the
same integer `42`) and as such, will have the same `x_outer_id`.

This outputs the following as predicted:
```
a_outer is 42 with an id of: 85 before the method call .
b_outer is forty two with an id of: 14851660 before the method call.
c_outer is [42] with an id of: 14851640 before the method call.
d_outer is 42 with an id of: 85 before the method call.
```

### 2. Inside the method

The method then calls another method and passes the 8 previous variables
as arguments:

```ruby
an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)
```

Let's look at `an_illustrative_method`:

```ruby
a_outer_inner_id = a_outer.object_id
b_outer_inner_id = b_outer.object_id
c_outer_inner_id = c_outer.object_id
d_outer_inner_id = d_outer.object_id

puts "a_outer id was #{a_outer_id} before the method and is: #{a_outer.object_id} inside the method."
puts "b_outer id was #{b_outer_id} before the method and is: #{b_outer.object_id} inside the method."
puts "c_outer id was #{c_outer_id} before the method and is: #{c_outer.object_id} inside the method."
puts "d_outer id was #{d_outer_id} before the method and is: #{d_outer.object_id} inside the method."
```

First, we create 4 new variables (`x_outer_inner_id`) that reference the same
IDs than `a_outer.object_id` and `a_outer_id`.

As such, we expect the `puts` statements to print out twice the same ID.

```
a_outer id was 85 before the method and is: 85 inside the method.
b_outer id was 14851660 before the method and is: 14851660 inside the method.
c_outer id was 14851640 before the method and is: 14851640 inside the method.
d_outer id was 85 before the method and is: 85 inside the method.
```

Our result is coherent with our expectation.
These `x_outer` variables are *not* the same variables as those outside
`an_illustrative_method`, but they have the same *values* (and as such, Ruby
re-uses their object IDs.)

### 3. After reassignment

```ruby
a_outer = 22
b_outer = "thirty three"
c_outer = [44]
d_outer = c_outer[0]

puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."
puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after."
puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after."
puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after.
```

Inside the method, we reassign the original variables `x_outer` to 4 new
different variables. As such, `a_outer` and `d_outer` will cease to refer to the
same object and will have different object IDs.
The new IDs (`x_outer.object_id`) will be different from the previous IDs
passed as arguments (`x_outer_id`).

```
a_outer inside after reassignment is 22 with an id of: 85 before and: 45 after.
b_outer inside after reassignment is thirty three with an id of: 14851660 before and: 14850900 after.
c_outer inside after reassignment is [44] with an id of: 14851640 before and: 14850880 after.
d_outer inside after reassignment is 44 with an id of: 85 before and: 89 after.
```

The output is in line with our deductions: the `x_outer` variables have changed
and so do the `x_outer.object`.

### 4. Inside the Method - Comparison with Outer

```ruby
a_inner = a_outer
b_inner = b_outer
c_inner = c_outer
d_inner = c_inner[0]

a_inner_id = a_inner.object_id
b_inner_id = b_inner.object_id
c_inner_id = c_inner.object_id
d_inner_id = d_inner.object_id

puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the method (compared to #{a_outer.object_id} for outer)."
puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the method (compared to #{b_outer.object_id} for outer)."
puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the method (compared to #{c_outer.object_id} for outer)."
puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the method (compared to #{d_outer.object_id} for outer).
```

We create 4 new variables (`x_inner`) that reference the same object than
(`x_outer`) inside the method in stage 3.
As such, `x_inner.object_id` (represented by `x_inner_id`) and `x_outer.object_id`
have the same values.

The print statement is counter-intuitive because it suggests that `x_outer.object_id`
will refer to the object ID of the initial `x_outer` variables from the `fun_with_ids`
method call. Instead, `x_outer.object_id` refer to the same value as in stage 3,
which is the same as `x_inner_id`.

```
a_inner is 22 with an id of: 45 inside the method (compared to 45 for outer).
b_inner is thirty three with an id of: 14850900 inside the method (compared to 14850900 for outer).
c_inner is [44] with an id of: 14850880 inside the method (compared to 14850880 for outer).
d_inner is 44 with an id of: 89 inside the method (compared to 89 for outer).
```

### 5. After the method call - Outer comparison

We then exit the nested method and go back to `fun_with_ids`:

```
puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the method call."
puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the method call."
puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the method call."
puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the method call."
```

`x_outer` refer to the *initial* values (`42`, `"forty two"`, `[42]`, `42`)
because the reassignment that happened inside `an_illustrative_method` has not
mutated the caller.

Therefore, both `x_outer_id` and `x_outer.object_id` refer to the same ID
(ie. the one that was printed in stage 1). `a_outer_id` and `d_outer_id`
are once again identical.

```
a_outer is 42 with an id of: 85 BEFORE and: 85 AFTER the method call.
b_outer is forty two with an id of: 14851660 BEFORE and: 14851660 AFTER the method call.
c_outer is [42] with an id of: 14851640 BEFORE and: 14851640 AFTER the method call.
d_outer is 42 with an id of: 85 BEFORE and: 85 AFTER the method call.
```

And we're right!

### 6. After the method call - Inner comparison

```
puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
```

The `x_inner` and `x_inner_id` variables were initialized within `an_illustrative_method` and
not passed onto `fun_with_ids`.
As such, these variables are not accessible from within `fun_with_ids`
and `ugh ohhhhh` will be printed.

```
ugh ohhhhh
ugh ohhhhh
ugh ohhhhh
ugh ohhhhh
```

Here we are!