def generate_initial_hash(number_of_lights)
  lights = {}
  1.upto(number_of_lights) { |number| lights[number] = false }
  lights
end

def switch(number_of_lights)
  lights = generate_initial_hash(number_of_lights)

  counter = 1
  number_of_lights.times do
    lights.each do |number, boolean|
      lights[number] = !boolean if (number % counter).zero?
    end

    counter += 1
  end

  lights.select { |_, boolean| boolean == true }.keys
end

# Test scenario

p switch(2)   == [1]
p switch(3)   == [1]
p switch(5)   == [1, 4]
p switch(10)  == [1, 4, 9]
p switch(25)  == [1, 4, 9, 16, 25]
