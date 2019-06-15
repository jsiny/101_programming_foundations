def buy_fruit(array)
  array.each_with_object([]) do |(fruit, quantity), list|
    quantity.times { list << fruit }
  end
end

p buy_fruit([['apples', 3], ['orange', 1], ['bananas', 2]]) ==
  %w(apples apples apples orange bananas bananas)

# One line solution

def buy_fruit_2(array)
  array.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit_2([['apples', 3], ['orange', 1], ['bananas', 2]]) ==
  %w(apples apples apples orange bananas bananas)
