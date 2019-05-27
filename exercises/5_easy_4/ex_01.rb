# Algorithm
# - Compare strings sizes
# - Define 2 variables: longest & shortest
# - Join shortest-longest-shortest

def short_long_short(first, second)
  if first.size > second.size
    longest = first
    shortest = second
  elsif second.size > first.size
    longest = second
    shortest = first
  else
    return 'Impossibru!'
  end
  shortest.concat(longest, shortest)
end

p short_long_short('abc', 'defgh') == 'abcdefghabc'
p short_long_short('abcde', 'fgh') == 'fghabcdefgh'
p short_long_short('', 'xyz') == 'xyz'
p short_long_short('hello', 'world') == 'Impossibru!'
