produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash)
  result = {}
  hash.each do |product, type|
    result[product] = type if type == 'Fruit'
  end
  result
end

p select_fruit(produce)
