DIGITS = {  'zero'  => '0',
            'one'   => '1',
            'two'   => '2',
            'three' => '3',
            'four'  => '4',
            'five'  => '5',
            'six'   => '6',
            'seven' => '7',
            'eight' => '8',
            'nine'  => '9'
}

def word_to_digit(sentence)
  new_sentence = sentence.split.map do |word|
    if DIGITS.include?(word)
      DIGITS[word]
    else
      word
    end
  end
  new_sentence.join(' ')
end

p word_to_digit('Call me at five five five one two three four. Thanks.')# ==
#'Call me at 5 5 5 1 2 3 4. Thanks.'
