def generate_initial_hash(num)
  lights = {}

  i = 1
  num.times do
    lights[i] = true
    i += 1
  end

  lights
end

def switch(num)
  lights = generate_initial_hash(num)

  counter = 1
  (num - counter).times do
    counter += 1

    lights.each do |number, boolean|
      lights[number] = !boolean if (number % counter).zero?
    end
  end

  lights.select { |_, boolean| boolean == true }.keys
end

# Test scenario

p switch(2)   == [1]
p switch(3)   == [1]
p switch(5)   == [1, 4]
p switch(10)  == [1, 4, 9]
