def staggered_case(string)
  sentence = []

  string.chars.each_with_index do |char, i|
    sentence << if char =~ /[a-zA-Z]/
                  i.even? ? char.upcase : char.downcase
                else
                  char
                end
  end

  sentence.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
