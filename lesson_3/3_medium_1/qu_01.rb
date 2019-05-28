# Question 1

def ascii_art(string)
  (0..9).each do |i|
    p ' ' * i + string
  end
end

ascii_art('The Flintsones Rock!')
