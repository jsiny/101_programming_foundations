def remove_vowels(array)
  array.map! do |string|
    string.chars.map { |char| char.gsub(/[aeiou]/i, '') }.join('')
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# Further Exploration

def remove_vowels_2(array)
  array.map { |string| string.delete('aeiouAEIOU') }
end

p remove_vowels_2(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels_2(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels_2(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
