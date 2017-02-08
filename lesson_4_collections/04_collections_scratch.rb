require 'pry'

# Create a hash that expresses the frequency with which each letter occurs in this string:

numbers = [1, 2, 3, 4]
numbers.each_with_index do |number, index|
  p "#{index}  #{numbers.inspect}  #{number}"
  # binding.pry
  numbers.shift(1)
end

