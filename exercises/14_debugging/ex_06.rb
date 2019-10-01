def move(n, from_array, to_array)
  n.downto(1).each { to_array << from_array.shift }
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo == ['coffee with Tom']
p done == ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

# --- Further Exploration ---

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(4, todo, done)

p todo == []
p done == ['apply sunscreen', 'go to the beach', 'study', 'walk the dog',
           'coffee with Tom', nil]
