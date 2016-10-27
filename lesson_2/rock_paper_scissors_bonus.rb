# https://github.com/haopingfan/exercise/blob/master/101/Lesson_2/rps_bonus/revised_rock_paper_scissors_bonus.rb
require 'pry'
VALID_CHOICES = %w(rock scissors paper lizzard spock)

computer_score = 0
player_score = 0
choice = ''

def integer?(string)
  /^\d+$/.match(string)
end

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
# score record in this loop
loop do
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You choose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  # score counter goes here
  # add_up_scores(choice, computer_choice)
  if win?(choice, computer_choice)
    player_score += 1
  elsif win?(computer_choice, choice)
    computer_score += 1
  end

  prompt("Score: you #{player_score}, computer #{computer_score}.")
  prompt("First to score 5 wins!")
  break if player_score == 5 || computer_score == 5

  prompt("Would you like to play again? (y or n)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
  clear_screen
end

prompt("Thank you for playing #{user_name}.")
