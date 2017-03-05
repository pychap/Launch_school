require 'pry'

CARD_SUITS = { 'H' => 'Hearts', 'D' => 'Diamonds',
               'S' => 'Spades', 'C' => 'Clubs' }.freeze
CARD_VALUES = %w[2 3 4 5 6 7 8 9 10 J Q K A].freeze

GAME_LIMIT = 21
STAY_NUM = 17
WINNER = 5

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  CARD_SUITS.keys.product(CARD_VALUES).shuffle
end

def total(cards)
  sum = 0
  # cards: [["H", "10"], ["D", "3"]]
  cards.each do |card|
    sum += if card.last == 'A'
             11
           elsif card.last.to_i.zero?
             10
           else
             card.last.to_i
           end
  end
  # binding.pry
  # correct for Aces
  cards.select { |value| value.include?("A") }.count.times do
    sum -= 10 if sum > GAME_LIMIT
  end

  sum
end

def busted?(cards)
  total(cards) > GAME_LIMIT
end

# :tie, :dealer, :player, :dealer_busted, :player_busted
def detect_result(dealer_cards, player_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if player_total > GAME_LIMIT
    :player_busted
  elsif dealer_total > GAME_LIMIT
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_cards, player_cards)
  result = detect_result(dealer_cards, player_cards)

  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

# method produces boolean
def play_again?
  puts '-------------'
  puts 'Do you want to play again? (y or n)'
  answer = ''
  loop do
    answer = gets.chomp.downcase
    break if answer == 'y' || answer == 'n'
    puts 'Not valid, must be y or n'
  end
  answer == 'y'
end

def continue?
  prompt 'Press any key and enter to continue...'
  gets
end

def match_done?(player_won, dealer_won)
  player_won == WINNER || dealer_won == WINNER
end

def cards_output_format(arr)
  string = ''
  arr.each_with_index do |item, index|
    string << item.to_s
    string << ', ' unless arr.size == (index + 1)
  end
  string
end

def end_of_round_display(dealer_cards, player_cards)
  puts '~~~~~~~~~~~~~~~~~~~~~~~'
  print "=> Dealer has #{cards_output_format(dealer_cards)},"
  puts " for a total of: #{total(dealer_cards)}"
  print "=> Player has #{cards_output_format(player_cards)},"
  puts " for a total of: #{total(player_cards)}"
  puts '~~~~~~~~~~~~~~~~~~~~~~~'
end

def align_cards(hand)
  hand.rjust(23 + hand.size)
end

def show_cards(cards, role)
  cards.each_with_index do |card, index|
    message = "#{card[1]} of #{CARD_SUITS[card[0]]}"
    if index.zero?
      puts align_cards(message)
    elsif role == 'player'
      puts align_cards(message)
    elsif role == 'dealer'
      puts align_cards(message)
    end
  end
end

def card_limit_reached?(check, other_role, roleee, player_won, dealer_won)
  loop do
    if busted?(check)
      end_of_round_display(other_role, check)
      display_result(other_role, check)
      if roleee == 'player'
        dealer_won += 1
      elsif roleee == 'dealer'
        player_won += 1
      end
      break if match_done?(player_won, dealer_won)
      continue?
      next
    else
      prompt "#{roleee[0].upcase + roleee.slice(1, 5)} stopped at #{total(check)}"
      break
    end
  end
end

# start of main game loop -------------------------------------------
loop do
  player_won = 0
  dealer_won = 0

  loop do
    system 'clear'
    prompt <<-MSG
    Welcome to #{GAME_LIMIT}!
       The player who wins #{WINNER} rounds first wins the game!
       You have won #{player_won} rounds --- dealer's won #{dealer_won} rounds.
       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    MSG

    deck = initialize_deck
    player_cards = []
    dealer_cards = []

    # initial deal
    2.times do
      player_cards << deck.pop
      dealer_cards << deck.pop
    end

    prompt "Dealer has #{dealer_cards[0]} and ?"
    prompt "You have #{player_cards[0]} and #{player_cards[1]},"
    prompt "for a total of #{total(player_cards)}"
    # ask to hit or stay

    loop do
      player_turn = nil
      loop do
        prompt "Would you like to (h)it or (s)tay?"
        player_turn = gets.chomp.downcase
        break if %w[h s].include?(player_turn)
        prompt "Please choose to hit or stay (h or s)."
      end

      if player_turn == 'h'
        player_cards << deck.pop
        prompt "You chose to hit!"
        prompt "Your cards:"
        show_cards(player_cards, 'player')
        prompt "Your cards are now #{total(player_cards)}"
      end

      break if player_turn == 's' || busted?(player_cards)
    end

    card_limit_reached?(player_cards, dealer_cards, 'player', player_won, dealer_won)

    # if busted?(player_cards)
    #   end_of_round_display(dealer_cards, player_cards)
    #   display_result(dealer_cards, player_cards)
    #   dealer_won += 1
    #   break if match_done?(player_won, dealer_won)
    #   continue?
    #   next
    # else
    #   prompt "You stayed at #{total(player_cards)}"
    # end

    prompt 'Dealer\'s turn...'

    loop do
      break if busted?(dealer_cards) || total(dealer_cards) >= STAY_NUM

      prompt 'Dealer hits!'
      dealer_cards << deck.pop
      prompt 'Dealer cards now are: '
      show_cards(dealer_cards, 'dealer')
    end

    card_limit_reached?(dealer_cards, player_cards, 'dealer', player_won, dealer_won)

    # if busted?(dealer_cards)
    #   prompt "Dealer total is now: #{total(dealer_cards)}"
    #   end_of_round_display(dealer_cards, player_cards)
    #   display_result(dealer_cards, player_cards)
    #   player_won += 1
    #   break if match_done?(player_won, dealer_won)
    #   continue?
    #   next
    # else
    #   prompt "Dealer stays at #{total(dealer_cards)}"
    # end

    end_of_round_display(dealer_cards, player_cards)
    display_result(dealer_cards, player_cards)

    case detect_result(dealer_cards, player_cards)
    when :player
      player_won += 1
    when :dealer
      dealer_won += 1
    end

    break if match_done?(player_won, dealer_won)
    continue?
  end

  if player_won == WINNER
    prompt "You won #{WINNER} rounds, you are the winner!"
  else
    prompt "Dealer won #{WINNER} rounds, dealer won the game."
  end

  break unless play_again?
end

prompt "Thank you for playing, enjoy the rest of your day!"
