def crunch(str)
  str.chars.each_with_object([]) do |char, crunched|
    crunched << char unless crunched[-1] == char
  end
     .join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
