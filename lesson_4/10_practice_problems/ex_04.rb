ages = {  'Herman' => 32, 'Lily' => 30, 'Grandpa' => 5843, 'Eddie' => 10,
          'Marilyn' => 22, 'Spot' => 237 }

youngest = ages['Herman']

ages.each do |_, age|
  youngest = age if age < youngest
end

p youngest

# Quicker version

p ages.values.min
