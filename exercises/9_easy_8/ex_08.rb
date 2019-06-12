def repeater(string)
  double = ''
  string.chars.each { |char| double += char * 2 }
  double
end

p repeater('Hello') == 'HHeelllloo'
p repeater('Good job!') == 'GGoooodd  jjoobb!!'
p repeater('') == ''
