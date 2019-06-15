arr = [[:a, 1], %w(b two), ['sea', { c: 3 }], [{ a: 1, b: 2, c: 3, d: 4 }, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3},
# {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

result = arr.each_with_object({}) do |(key, value), hash|
  hash[key] = value
end

p result

# Shorter method

hash = {}
arr.each { |item| hash[item[0]] = item[1] }

p hash
