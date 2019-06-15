VOWELS = %w(a e i o u).freeze

hsh = { first: %w(the quick), second: %w(brown fox), third: %w(jumped),
        fourth: %w(over the lazy dog) }

hsh.each do |_, array|
  array.each do |word|
    word.chars.each do |char|
      puts char if VOWELS.include?(char)
    end
  end
end
