if false
  greeting = “hello world”
end

p greeting

# `p greeting` prints `nil` here

# Without the if statement, this expression would raise an error
# (undefined local variable or method 'greeting' (NameError))

# However, when a variable is initiliazed within an 'if' block,
# the local variable is initialized to nil (even if that block is not executed)
