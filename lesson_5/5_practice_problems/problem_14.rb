hsh = {
  'grape' => { type: 'fruit', colors: %w(red green), size: 'small' },
  'carrot' => { type: 'vegetable', colors: ['orange'], size: 'medium' },
  'apple' => { type: 'fruit', colors: %w(red green), size: 'medium' },
  'apricot' => { type: 'fruit', colors: ['orange'], size: 'medium' },
  'marrow' => { type: 'vegetable', colors: ['green'], size: 'large' }
}

result = []

hsh.each_value do |produce|
  result << case produce[:type]
            when 'fruit'      then produce[:colors].map(&:capitalize)
            when 'vegetable'  then produce[:size].upcase
            end
end

p result
