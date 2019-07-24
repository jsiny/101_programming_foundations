def cleanup(sentence)
  sentence.chars.each_with_object([]) do |char, arr|
    arr << (char =~ /[a-z]/i ? char : ' ')
  end
          .join.squeeze(' ')
end

# More elegant method

def cleanup_1(sentence)
  sentence.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '
