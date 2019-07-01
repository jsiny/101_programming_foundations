# 32 hex characters 0-9 a-f
# 5 sections: 8-4-4-4-12
# string

HEX_CHARS = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f).freeze

def uuid
  number_of_chars = [8, 4, 4, 4, 12]
  uuid = ''

  number_of_chars.each do |n|
    uuid += HEX_CHARS.sample(n).join
    uuid += '-' unless n == 12
  end

  uuid
end

p uuid
