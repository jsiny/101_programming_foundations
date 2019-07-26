def spin_me(str)
  str.split.each(&:reverse!).join(' ')
end

a = 'hello world'

p spin_me(a)
p a
