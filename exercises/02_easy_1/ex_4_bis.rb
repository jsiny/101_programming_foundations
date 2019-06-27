def count_occurrences(array)
  count = array.each_with_object({}) do |element, hash|
    hash[element] = array.count(element)
  end

  count.each { |k, v| puts "#{k} => #{v}" }
end

vehicles = %w(car car truck car SUV truck motorcycle motorcycle car truck)
count_occurrences(vehicles)

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2
