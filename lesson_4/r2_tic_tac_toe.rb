require 'pry'

INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # row
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]] # diagonals
PLAYS_FIRST = 'choose'.freeze

def prompt(msg)
  puts "››››› #{msg}"
end

def display_board(brd)
  system 'clear'
  puts "You are #{PLAYER_MARKER}, Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  # returns true or false
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def find_at_risk_square(line, board)
  if board.values_at(*line).count('X') == 2
    board.select { |k, v| line.include?(k) && v == ' ' }.keys.first
  else
    nil
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square, (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd)
    break if square
  end
  # offense
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
    # defense
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
    square = 5 if brd[5] == INITIAL_MARKER && !square
  end
  # just pick a square
  if !square
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  # binding.pry
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def first_to_five(players_the_winner, computers_the_winner)
  if players_the_winner == 5
    prompt "Player has won 5 games, congratulations!"
    return true
  elsif computers_the_winner == 5
    prompt "Computer has won 5 games, congratulations!"
    return true
  end
end

# from possible solution...
def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    # the line below tests for truthyness
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
    # binding.pry
  else
    nil
  end
end

def choose_player(start_choice)
  loop do
    prompt "Would you like to start, or would you prefer the computer start?"
    prompt "P for you, C for computer."
    answer = gets.chomp
    if answer.downcase.start_with?('p')
      start_choice = 'player'
      break
    elsif answer.downcase.start_with?('c')
      start_choice = 'computer'
      break
    else
      prompt 'Not a valid choice, please choose "P" or "C"!'
    end
    start_choice
  end
end

def first_player(start_choice)
  if PLAYS_FIRST == 'choose'
    choose_player(start_choice)
  elsif PLAYS_FIRST == 'player'
    'player'
  else
    'computer'
  end
end

loop do
  board = initialize_board
  loop do
    display_board(board)
    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if detect_winner(board) == 'Player'
    players_the_winner += 1
  elsif detect_winner(board) == 'Computer'
    computers_the_winner += 1
  end

  puts "~~~~~~~~~~~~~~~~~~~~~~"
  puts "Player score is #{players_the_winner}"
  puts "Computer score is #{computers_the_winner}"
  puts "~~~~~~~~~~~~~~~~~~~~~~"

  break if first_to_five(players_the_winner, computers_the_winner)

  if someone_won?(board)
    # binding.pry
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  prompt "Play again? Y or N"
  play_again = gets.chomp
  # break if play_again.downcase == 'n'
  break unless play_again.downcase.start_with?('y')
end
<<<<<<< HEAD
# end
=======

>>>>>>> b0be1ef11d2b4ea6297c69f027410d7f34f5ba90
prompt "Thanks for playing tic tac toe, good bye!"
