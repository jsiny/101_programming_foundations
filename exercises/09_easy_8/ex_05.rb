def substrings_at_start(string)
  substrings = []
  0.upto(string.size - 1) { |index| substrings << string[0..index].downcase }
  substrings
end

def substrings(string)
  total_substrings = []
  alpha_only = string.chars.delete_if { |char| char =~ /[^a-z0-9]/i }.join
  alpha_only.chars.each_index do |index|
    current_string = alpha_only[index..-1]
    total_substrings += substrings_at_start(current_string)
  end
  total_substrings
end

def palindromes(string)
  total_substrings = substrings(string)
  palindroms = []
  total_substrings.each do |substr|
    next if substr.size < 2
    palindroms << substr if substr == substr.reverse
  end
  palindroms
end

p palindromes('abcd')  == []
p palindromes('madam') == %w(madam ada)
p palindromes('hello-madam-did-madam-goodbye') == %w(
  ll madam madamdidmadam ada
  adamdidmada damdidmad amdidma mdidm did
  madam ada oo
)
p palindromes('knitting cassettes') == %w(nittin itti tt ss settes ette tt)
p palindromes('hel!lo-Mad_am-1did1-ma22dam-go_od-$bye-')
# => ["ll", "Madam", "ada", "am1did1ma", "m1did1m", "1did1", "did", "22", "oo"]
