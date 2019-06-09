def double_odd_indices(numbers)
  results = []

  numbers.each_with_index do |num, i|
    results <<  if i.odd?
                  num * 2
                else
                  num
                end
  end
  results
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_indices(my_numbers) == [1, 8, 3, 14, 2, 12]
p my_numbers
