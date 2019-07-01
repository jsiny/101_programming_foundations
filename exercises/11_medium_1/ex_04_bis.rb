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

p lights(5)   == [1, 4]
p lights(10)  == [1, 4, 9]
