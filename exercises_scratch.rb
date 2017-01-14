require 'pry'
# require 'seeing_is_believing'

choose_player

loop do 
  if choose_player == 'player'
    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  elsif choose_player == 'computer'
    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)    
  end
  
end