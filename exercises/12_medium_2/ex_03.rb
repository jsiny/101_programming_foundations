def letter_percentages(string)
  content = { lowercase: 0, uppercase: 0, neither: 0 }
  sort_according_to_case(string, content)
  length = string.size.to_f
  content.each_key do |k|
    convert_to_percentage(content, k, length)
  end
end

def sort_according_to_case(string, content)
  string.chars.each do |char|
    if char =~ /[a-z]/
      content[:lowercase] += 1
    elsif char =~ /[A-Z]/
      content[:uppercase] += 1
    else
      content[:neither] += 1
    end
  end
end

def convert_to_percentage(hash, key, length)
  hash[key] = (hash[key] / length) * 100
end

p letter_percentages('h7ag ') == { lowercase: 60, uppercase: 0, neither: 40 }
p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10,
                                        neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5,
                                      neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
