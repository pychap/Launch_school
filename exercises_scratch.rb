<<<<<<< HEAD
require 'pry'

say_hello = true
	counter = 0

while say_hello

    puts 'Hello!'
    counter += 1
  say_hello = false if counter == 5
end
=======
require 'pry'                  # => true
require 'seeing_is_believing'  # => true

def create_hash
  new_board = {}
  (1..9).each {|val| new_board[val] = ' '}
    new_board
end

p create_hash
>>>>>>> b865ca0fbf4127e625ef06bf0c70f8349a65624b
