def change_caps_according_to_index(string, sentence)
  i = 0

  string.chars.each do |char|
    sentence << if char =~ /[a-zA-Z]/
                  i += 1
                  i.odd? ? char.upcase : char.downcase
                else
                  char
                end
  end
  sentence
end

def staggered_case(string)
  sentence = []
  change_caps_according_to_index(string, sentence)
  sentence.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
