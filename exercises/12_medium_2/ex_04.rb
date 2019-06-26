# rubocop:disable Metrics/MethodLength
def balanced?(string)
  has_opening = 0
  has_closing = 0

  string.chars.each do |char|
    if char == '('
      has_opening += 1
    elsif char == ')'
      has_closing += 1
    else
      next
    end
    break false if has_closing > has_opening
  end

  has_opening == has_closing
end
# rubocop: enable Metrics/MethodLength

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
