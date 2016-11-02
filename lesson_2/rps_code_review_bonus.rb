require 'pry'
VALID_CHOICES = %w(rock scissors paper lizzard spock)
WINNING_CONDITION = {
  'rock' => %w(scissors lizzard),
  'paper' => %w(rock spock),
  'scissors' => %w(paper lizzard),
  'spock' => %w(rock scissors),
  'lizard' => %w(paper spock)
}

computer_score = 0
player_score = 0
choice = ''

def clear_screen
  system('clear') || system('cls')
end

def prompt(message)
  Kernel.puts(">= #{message}")
end

def win?(player, computer)
  WINNING_CONDITION[player].include?(computer)
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

prompt("Hi, what's your name?")
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
  prompt('--------------------------')
  prompt("Score: you #{player_score}, computer #{computer_score}.")
  prompt('--------------------------')
  break if player_score == 5 || computer_score == 5

  prompt("Would you like to play again? (y or n)")
  prompt("Or press any key to exit.")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
  clear_screen
end

prompt("Thank you for playing #{user_name}.")
