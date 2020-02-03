def fibonacci_1(nth)
  fibonacci_tail(nth, 1, 1)
end

def fibonacci_tail(n, acc1, acc2)
  case n
  when 1 then acc1
  when 1 then acc2
  else fibonacci_tail(n - 1, acc2, acc1 + acc2)
  end
end

def fibonacci_2(nth)
  return 1 if nth < 3
  fibonacci_2(nth - 1) + fibonacci_2(nth - 2)
end

def fibonacci_3(n)
  first, last = [1, 1]
  3.upto(n) { first, last = last, first + last }
  last
end

t1 = Time.now

p fibonacci_1(1)  == 1
p fibonacci_1(2)  == 1
p fibonacci_1(3)  == 2
p fibonacci_1(4)  == 3
p fibonacci_1(5)  == 5
p fibonacci_1(11) == 89
p fibonacci_1(12) == 144
p fibonacci_1(20) == 6765
p fibonacci_1(39) == 63_245_986

t2 = Time.now
puts t2 - t1

p fibonacci_2(1)  == 1
p fibonacci_2(2)  == 1
p fibonacci_2(3)  == 2
p fibonacci_2(4)  == 3
p fibonacci_2(5)  == 5
p fibonacci_2(11) == 89
p fibonacci_2(12) == 144
p fibonacci_2(20) == 6765
p fibonacci_2(39) == 63_245_986

t3 = Time.now
puts t3 - t2

p fibonacci_3(1)  == 1
p fibonacci_3(2)  == 1
p fibonacci_3(3)  == 2
p fibonacci_3(4)  == 3
p fibonacci_3(5)  == 5
p fibonacci_3(11) == 89
p fibonacci_3(12) == 144
p fibonacci_3(20) == 6765
p fibonacci_3(39) == 63_245_986

t4 = Time.now
puts t4  - t3