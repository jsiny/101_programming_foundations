def balanced?(string)
  has_opening = 0
  has_closing = 0

  string.chars.each do |char|
    has_opening += 1 if char == '('
    has_closing += 1 if char == ')'
    break if has_closing > has_opening
  end

  has_opening == has_closing
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

# Shorter method

def balanced_2?(string)
  parentheses = 0
  string.each_char do |char|
    parentheses += 1 if char == '('
    parentheses -= 1 if char == ')'
    break if parentheses < 0
  end
  parentheses.zero?
end

p balanced_2?('What (is) this?') == true
p balanced_2?('What is) this?') == false
p balanced_2?('What (is this?') == false
p balanced_2?('((What) (is this))?') == true
p balanced_2?('((What)) (is this))?') == false
p balanced_2?('Hey!') == true
p balanced_2?(')Hey!(') == false
p balanced_2?('What ((is))) up(') == false
