require 'pry'                  # => true
require 'seeing_is_believing'  # => true

def create_hash
  new_board = {}
  (1..9).each {|val| new_board[val] = ' '}
    new_board
end

p create_hash
