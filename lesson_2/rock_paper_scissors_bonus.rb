require 'pry'
VALID_CHOICES = %w(rock scissors paper lizzard spock)

computer_score = 0
player_score = 0
choice = ''

def clear_screen
  system('clear') || system('cls')
end

def prompt(message)
  Kernel.puts(">= #{message}")
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'rock')) ||
    (first == 'spock' && (second == 'scissors' || second == 'rock')) ||
    (first == 'lizard' && (second == 'spock' || second == 'paper'))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

alternatives = <<-MSG
  Choose 'r' for Rock
  Choose 'sc' for Scissors
  Choose 'p' for Paper
  Choose 'sp' for Spock
  Choose 'l' for Lizzard
  Choose 'q' for quit
MSG

def user_choose
  holder = Kernel.gets().chomp()
  choice = case holder
           when 'r' then 'rock'
           when 'sc' then 'scissors'
           when 'p' then 'paper'
           when 'sp' then 'spock'
           when 'l' then 'lizzard'
           when 'q' then 'quit'
           else
             return false
           end
  choice
end

# start of game, introduction
clear_screen

prompt("Welcome, what's your name?")
user_name = ''
loop do
  user_name = gets.chomp
  break if user_name =~ /^[A-Za-z]+$/
  prompt "Please enter a valid name:"
end

prompt("Hi #{user_name}, welcome.")
prompt("Whoever makes it to 5 points first wins!")

# main loop
loop do
  loop do
    prompt(alternatives)
    choice = user_choose()
    break if choice == 'q'
    if choice == false
      prompt("That's not a valid choice.")
    else
      break
    end
  end
  # binding.pry
  break if choice == "quit"
  computer_choice = VALID_CHOICES.sample

  prompt("You choose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  # score counter
  if win?(choice, computer_choice)
    player_score += 1
  elsif win?(computer_choice, choice)
    computer_score += 1
  end

  prompt("Score: you #{player_score}, computer #{computer_score}.")
  break if player_score == 5 || computer_score == 5

  prompt("Would you like to play again? (y or n)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
  clear_screen
end

prompt("Thank you for playing #{user_name}.")
