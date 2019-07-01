def lights(n)
  switches = initialize_hash(n)
  counter = 1

  n.times do
    switches.each do |number, status|
      switches[number] = !status if (number % counter).zero?
    end
    counter += 1
  end
  switches.select { |_, v| v == true }.keys
end

def initialize_hash(n)
  hash = {}
  n.times { |i| hash[i + 1] = false }
  hash
end

p lights(5)     == [1, 4]
p lights(10)    == [1, 4, 9]
p lights(1000)  == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196,
                    225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625,
                    676, 729, 784, 841, 900, 961]

# Further Exploration: With Array instead of Hash

def lights_on(n)
  1.upto(Math.sqrt(n)).map { |i| i**2 }
end

p lights_on(1)
p lights_on(2)
p lights_on(3)
p lights_on(4)
p lights_on(5)     == [1, 4]
p lights_on(10)    == [1, 4, 9]
p lights_on(1000)  == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169,
                       196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576,
                       625, 676, 729, 784, 841, 900, 961]

# Further Exploration: With Sentences

def lights_off(n)
  1.upto(n).select { |i| Math.sqrt(i).to_i != Math.sqrt(i) }
end

p lights_off(1)
p lights_off(2)
p lights_off(3)   == [2, 3]
p lights_off(5)   == [2, 3, 5]
p lights_off(10)  == [2, 3, 5, 6, 7, 8, 10]

def print_lights_on_off(n)
  on = lights_on(n)
  off = lights_off(n)

  case n
  when 1 then 'Light 1 is on.'
  when 2 then 'Light 2 is off; light 1 is on.'
  when 3 then 'Lights 2 and 3 are off; light 1 is on.'
  else
    "Lights #{off[0..-2].join(', ')} and #{off[-1]} are off; lights"\
    " #{on[0..-2].join(', ')} and #{on[-1]} are on."
  end
end

p print_lights_on_off(1)
p print_lights_on_off(2)
p print_lights_on_off(3)
p print_lights_on_off(4)
p print_lights_on_off(5)
p print_lights_on_off(10)
p print_lights_on_off(100)
