arr = [{ a: [1, 2, 3] }, { b: [2, 4, 6], c: [3, 6], d: [4] },
       { e: [8], f: [6, 10] }]

# Output: an array which contains only the hashes where all the integers are
# even

result = arr.select do |hash|
  hash.all? do |_, ary|
    ary.all?(&:even?)
  end
end

p result
p arr
