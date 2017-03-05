str = 'a string'

def str
  'a method'
end

p str # => 'a string'
p str() # => 'a method'
p (str()) # => 'a method'