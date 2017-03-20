require 'pry'

def amethod(param) # param is assigned to str  param = str
  param += ' universe' # reassignment, new object, param is no longer pointing to str, we can do what we 
                       # want to param, it won't affect str
  param << " world"
  # binding.pry
end

str = "hello"
amethod(str)

p str

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Select
# select returns a new array based on the block's *return value*. If the return value evaluates to true, then the element is selected.

# map
# map returns a new array based on the block's *return value*. Each element is transformed based on the return value.
# map cannot filter. 

arr = [1, 2, 3, 4, 5]

incremented = arr.map do |n|
  n > 1
end