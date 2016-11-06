# require 'pry'
VALID_CHOICES = %w(rock scissors paper lizzard spock)
WINNING_CONDITION = {
  'rock' => %w(scissors lizzard),
  'paper' => %w(rock spock),
  'scissors' => %w(paper lizzard),
  'spock' => %w(rock scissors),
  'lizzard' => %w(paper spock)
}
ALTERNATIVES = <<-MSG
  Choose 'r' for Rock
  Choose 'sc' for Scissors
  Choose 'p' for Paper
  Choose 'sp' for Spock
  Choose 'l' for Lizzard
MSG

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

def user_choice(option_holder)
  case option_holder.downcase
    # binding.pry
  when 'r' then 'rock'
  when 'sc' then 'scissors'
  when 'p' then 'paper'
  when 'sp' then 'spock'
  when 'l' then 'lizzard'
  else
    false
  end
end

# start of game, introduction
clear_screen

prompt("Hi, what's your name?")
user_name = ''
loop do
  user_name = gets.chomp
  if user_name.empty? || user_name == ' '
    # break if user_name =~ /^[A-Za-z]+$/
    prompt "Please enter a valid name:"
  else
    break
  end
end
clear_screen
prompt("Hi #{user_name}, welcome.")
prompt("Whoever makes it to 5 points first wins!")

# main loop
loop do
  loop do
    loop do
      prompt(ALTERNATIVES)
      option_holder = Kernel.gets().chomp()
      choice = user_choice(option_holder)
      if choice == false
        prompt("That's not a valid choice.")
      else
        break
      end
    end

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
    break if player_score == 3 || computer_score == 3
    prompt("Press enter to continue.")
    gets
    clear_screen
  end

  # clear_screen
  prompt("Would you like to play again? ('y' for yes or any other key if no)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
  clear_screen
end

clear_screen
prompt("Thank you for playing #{user_name}.")
