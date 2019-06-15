def letter_case_count(string)
  results = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars.each do |char|
    case char
    when /[a-z]/ then results[:lowercase] += 1
    when /[A-Z]/ then results[:uppercase] += 1
    else results[:neither] += 1
    end
  end

  results
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# Other method with Array#count

def letter_case_count_2(string)
  results = {}
  characters = string.chars

  results[:lowercase] = characters.count { |x| x =~ /[a-z]/ }
  results[:uppercase] = characters.count { |x| x =~ /[A-Z]/ }
  results[:neither]   = characters.count { |x| x =~ /[^A-Za-z]/ }

  results
end

p letter_case_count_2('abCdf 123') == { lowercase: 4, uppercase: 1, neither: 4 }
p letter_case_count_2('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count_2('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count_2('') == { lowercase: 0, uppercase: 0, neither: 0 }
