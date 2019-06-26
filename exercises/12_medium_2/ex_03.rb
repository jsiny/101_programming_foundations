def letter_percentages(string)
  content = { lowercase: 0, uppercase: 0, neither: 0 }
  content[:lowercase] = string.chars.count { |char| char =~ /[a-z]/ }
  content[:uppercase] = string.chars.count { |char| char =~ /[A-Z]/ }
  content[:neither]   = string.chars.count { |char| char =~ /[^a-zA-Z]/ }

  length = string.size.to_f
  content.each_key do |k|
    convert_to_percentage(content, k, length)
  end
end

def convert_to_percentage(hash, key, length)
  hash[key] = ((hash[key] / length) * 100).round(2)
end

p letter_percentages('h7ag ') == { lowercase: 60, uppercase: 0, neither: 40 }
p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10,
                                        neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5,
                                      neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abcdefGHI') == {  lowercase: 66.67, uppercase: 33.33,
                                        neither: 0 }
