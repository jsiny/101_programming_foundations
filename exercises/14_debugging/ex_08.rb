password = nil

def set_password
  puts 'What would you like your password to be?'
  gets.chomp
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  puts input == password ? 'Welcome to the inside!' : 'Authentication failed.'
end

if !password
  password = set_password
end

verify_password(password)
