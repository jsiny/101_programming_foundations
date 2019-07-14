vehicles = %w(  car car truck car SUV truck motorcycle
                motorcycle car truck suv )

# Initial answer

def count_occurrences(arr)
  puts arr.map { |el| "#{el} => #{arr.count(el)}" }.uniq
end

# Further exploration: case insensitive

# def count_occurrences(arr)
#   ary = arr.map(&:downcase)
#   puts ary.map { |el| "#{el} => #{ary.count(el)}" }.uniq
# end

count_occurrences(vehicles)
