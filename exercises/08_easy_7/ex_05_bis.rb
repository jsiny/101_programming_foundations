def staggered_case_1(string)
  sentence = ''
  string.chars.each_with_index do |char, i|
    sentence += i.even? ? char.upcase : char.downcase
  end
  sentence
end

p staggered_case_1('I Love Launch School!')     == 'I LoVe lAuNcH ScHoOl!'
p staggered_case_1('ALL_CAPS')                  == 'AlL_CaPs'
p staggered_case_1('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Further Exploration

def staggered_case(string, first = 'up')
  sentence = ''
  counter = first == 'up' ? 0 : 1
  string.each_char do |char|
    sentence += counter.even? ? char.upcase : char.downcase
    counter += 1
  end
  sentence
end

p staggered_case('I Love Launch School!', 'up')   == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS')                      == 'AlL_CaPs'
p staggered_case('ALL_CAPS', 'down')              == 'aLl_cApS'
p staggered_case('ignore the 4 numbers', 'down')  == 'iGnOrE ThE 4 NuMbErS'
