def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar(foo)
# 'no'

# The bar method is called with the food method as an argument
# `foo` always returns "yes"
# "yes" == "no" returns false
# Therefore `bar(foo)` returns 'no'
