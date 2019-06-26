def balanced_1?(string)
  has_opening = 0
  has_closing = 0

  string.chars.each do |char|
    has_opening += 1 if char == '('
    has_closing += 1 if char == ')'
    break if has_closing > has_opening
  end

  has_opening == has_closing
end

p balanced_1?('What (is) this?') == true
p balanced_1?('What is) this?') == false
p balanced_1?('What (is this?') == false
p balanced_1?('((What) (is this))?') == true
p balanced_1?('((What)) (is this))?') == false
p balanced_1?('Hey!') == true
p balanced_1?(')Hey!(') == false
p balanced_1?('What ((is))) up(') == false

puts '--------'

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

puts '--------'

# Further Exploration

DIFFERENT_PAIRS = [%w(( )), %w([ ]), %w({ })].freeze
QUOTES = ['\'', '\"'].freeze

def extended_balance?(string)
  result = []

  DIFFERENT_PAIRS.each do |pair|
    result << balanced?(string, pair)
  end

  QUOTES.each do |quote|
    result << balanced_with_quote?(string, quote)
  end

  result.all? { |element| element == true }
end

def balanced?(string, pair)
  duo = 0
  string.each_char do |char|
    duo += 1 if char == pair[0]
    duo -= 1 if char == pair[1]
    break if duo < 0
  end
  duo.zero?
end

def balanced_with_quote?(string, quote)
  string.chars.count { |char| char == quote }.even?
end

p extended_balance?('hey {') == false
p extended_balance?('hello (madam) I will be {your} guide') == true
p extended_balance?("hello (madam) I'll be {your} guide") == false
p extended_balance?('hello (madam') == false
p extended_balance?('} next {') == false
p extended_balance?("I 'love' you") == true
p extended_balance?('I "would" love to meet ya') == true
