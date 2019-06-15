arr = [%w(b c a), [2, 1, 3], %w(blue black green)]

result = arr.map do |subarr|
  subarr.sort { |a, b| b <=> a }
end

p result
