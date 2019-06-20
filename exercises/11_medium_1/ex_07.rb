DIGITS = {  'zero'  => '0',
            'one'   => '1',
            'two'   => '2',
            'three' => '3',
            'four'  => '4',
            'five'  => '5',
            'six'   => '6',
            'seven' => '7',
            'eight' => '8',
            'nine'  => '9' }.freeze

def word_to_digit(sentence)
  DIGITS.keys.each do |digit|
    sentence.gsub!(/\b#{digit}\b/, DIGITS[digit])
  end
  sentence
end

sentence = 'Call me at five five five one two three four. Thanks.'
p word_to_digit(sentence) == 'Call me at 5 5 5 1 2 3 4. Thanks.'
