require 'pry'

VALID_CHOICES = %w(rock scissors paper lizzard spock)

def prompt(message)
  Kernel.puts(">= #{message}")
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
  # binding.pry
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
  return choice
  binding.pry
end

loop do
  prompt(alternatives)
  choice = user_choose()
  # binding.pry
  break if choice == 'q'
  if choice == false
    prompt("That's not a valid choice.")
  else
    # binding.pry
    break
  end
end

puts choice
