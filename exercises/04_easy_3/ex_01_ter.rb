NUMEROTATION = %w(1st 2nd 3rd 4th 5th last).freeze

def ask_six_numbers
  NUMEROTATION.map do |num|
    puts "==> Enter the #{num} number:"
    gets.chomp.to_i
  end
end

numbers = ask_six_numbers
last = numbers[-1]
numbers = numbers[0...-1]

if numbers.include?(last)
  puts "The number #{last} appears in #{numbers}."
else
  puts "The number #{last} does not appear in #{numbers}."
end
