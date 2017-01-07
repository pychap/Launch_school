INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]].freeze # diags

# rubocop: disable Performance/Casecmp
def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
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
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delim = ', ', last_delim = 'or')
  case arr.size
  when 0 then ""
  when 1 then arr.first
  when 2 then "#{arr[0]} or #{arr[1]}"
  else
    arr[-1] = "#{last_delim} #{arr.last}"
    arr.join(delim)
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = offensive_move(brd)
  square = defensive_move(brd) unless square
  square = key_square(brd) unless square
  square = empty_squares(brd).sample unless square
  brd[square] = COMPUTER_MARKER
end

def defensive_move(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = defend_against_win(line, brd)
    break if square
  end
  square
end

def defend_against_win(line, brd)
  return nil unless brd.values_at(*line).count(PLAYER_MARKER) == 2
  brd.select { |key, value| line.include?(key) && value == ' ' }.keys.first
end

def offensive_move(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = take_the_win(line, brd)
    break if square
  end
  square
end

def take_the_win(line, brd)
  return nil unless brd.values_at(*line).count(COMPUTER_MARKER) == 2
  brd.select { |key, value| line.include?(key) && value == ' ' }.keys.first
end

def key_square(brd)
  return nil unless brd[5] == INITIAL_MARKER
  5
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def display_results(player, computer)
  if player > computer
    prompt "You are winning #{player}:#{computer}!"
  elsif player < computer
    prompt "You are losing #{player}:#{computer}!"
  else prompt "You are tied #{player}:#{computer}!"
  end
  sleep(2)
end

def place_piece!(brd, current_player)
  if current_player == "Player"
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def alternate_player(current_player)
  if current_player == "Player"
    "Computer"
  else
    "Player"
  end
end

def convert_answer(answer)
  if answer.downcase == "p"
    "Player"
  else
    "Computer"
  end
end

def who_acts_first
  answer = ''
  loop do
    prompt "Should player or computer go first? (p for player, c for computer):"
    answer = gets.chomp
    break if answer.downcase == "p" || answer.downcase == "c"
    prompt "Please input p or c."
  end
  convert_answer(answer)
end

def valid_answer?
  answer = nil
  loop do
    prompt "Play again? (y or n)"
    answer = gets.chomp.downcase
    break if answer == "y" || answer == "n"
    prompt "Please input a valid response."
  end
  answer
end

player_score = 0
computer_score = 0
loop do
  current_player = who_acts_first
  loop do
    board = initialize_board
    first_to_act = current_player
    loop do
      display_board(board)
      place_piece!(board, first_to_act)
      first_to_act = alternate_player(first_to_act)
      break if someone_won?(board) || board_full?(board)
    end
    display_board(board)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
    else
      prompt "It's a tie!"
    end

    if detect_winner(board) == "Player"
      player_score += 1
    elsif detect_winner(board) == "Computer"
      computer_score += 1
    end
    break if player_score == 5 || computer_score == 5
    display_results(player_score, computer_score)
  end

  break unless valid_answer? == "y"
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"