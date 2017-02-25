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

def choose_player
  loop do
    puts "Would you like to start, or would you prefer the computer start?"
    puts "Enter P for you, C for computer."
    user_answer = gets.chomp
    if user_answer.downcase.start_with?('p')
      return 'player'
    elsif user_answer.downcase.start_with?('c')
      return 'computer'
    else
      puts 'Not a valid choice, please choose "P" or "C"!'
    end
  end
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

def find_at_risk_square(line, brd, marker)
  if brd.values_at(*line).count(marker) == 2
    # the line below tests for truthyness
    brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
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

def computer_smarts(sqr, brd, marker)
  WINNING_LINES.each do |line|
    sqr = find_at_risk_square(line, brd, marker)
    break if sqr
  end
  sqr
end

def computer_places_piece!(brd)
  square = nil
  # offense
  square = computer_smarts(square, brd, COMPUTER_MARKER)
  # defense (square nil = false)
  square = computer_smarts(square, brd, PLAYER_MARKER) unless square

  square = 5 if brd[5] == INITIAL_MARKER && !square
  square = empty_squares(brd).sample unless square

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
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

players_the_winner = 0
computers_the_winner = 0

def first_to_five(players_the_winner, computers_the_winner)
  if players_the_winner == 5
    prompt "Player's won 5 games, congratulations!"
    true
  elsif computers_the_winner == 5
    prompt "Computer's won 5 games, better luck next time!"
    true
  end
end

def place_piece!(brd, player)
  if player == "player"
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def alternate_player(current)
  current == 'player' ? 'computer' : 'player'
end

# start the game loop ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

loop do
  board = initialize_board
  current_player = choose_player

  loop do
    display_board(board)
    place_piece!(board, current_player)

    current_player = alternate_player(current_player)
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
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  play_again = ''
  loop do
    prompt "Play again? Y or N"
    play_again = gets.chomp
    case play_again
    when 'y', 'n' then break
    else
      puts "Please choose either Y or N"
    end
  end
  break unless play_again.downcase.start_with?('y')
end

prompt "Thanks for playing tic tac toe, good bye!"
