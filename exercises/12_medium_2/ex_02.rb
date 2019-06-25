def block_word?(word)
  pairs = { %w(B O) => 0, %w(X K) => 0, %w(D Q) => 0, %w(C P) => 0,
            %w(N A) => 0, %w(G T) => 0, %w(R E) => 0, %w(F S) => 0,
            %w(J W) => 0, %w(H U) => 0, %w(V I) => 0, %w(L Y) => 0,
            %w(Z M) => 0 }

  letters = word.chars.map(&:upcase)
  letters.each do |letter|
    pairs.each_key { |pair| pairs[pair] += 1 if pair.include?(letter) }
  end

  pairs.values.all? { |count| count <= 1 }
end

p block_word?('BATCH')  == true
p block_word?('BUTCH')  == false
p block_word?('butch')  == false
p block_word?('jest')   == true
