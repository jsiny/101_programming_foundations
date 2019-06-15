a = [1, 4, 8, 11, 15, 19]

# Find the first (ordered) element whose value exceeds 8 (=> 11)

p a.bsearch { |x| x > 8 }