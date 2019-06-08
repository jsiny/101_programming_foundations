count = 1

loop do
  puts count.even? ? "#{count} is even!" : "#{count} is odd!"
  break if count >= 5
  count += 1
end
