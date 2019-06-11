statement = 'The Flintstones Rock'

letters = {}

statement.chars.each do |char|
  if char =~ /[a-z]/i
    letters[char] = if letters.key?(char)
                      letters[char] + 1
                    else
                      1
                    end
  else
    next
  end
end

p letters

# Other method (with alphabetical order)

alphabet = ('A'..'Z').to_a + ('a'..'z').to_a
result = {}

alphabet.each do |a|
  frequency = statement.scan(a).count
  result[a] = frequency if frequency > 0
end

p result
