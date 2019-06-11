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
