arr1 = [{ a: 1 }, { b: 2, c: 3 }, { d: 4, e: 5, f: 6 }]

arr2 = arr1.map do |hash|
  new_hash = {}
  hash.map { |key, num| new_hash[key] = num + 1 }
  new_hash
end

p arr1
p arr2
