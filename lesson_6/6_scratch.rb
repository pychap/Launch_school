require 'pry'


puts "Play again? Y or N"
  play_again = gets.chomp
  # if play_again != play_again.downcase('y') || play_again.downcase('n')
  #   puts "Please choose either Y or N"

  case play_again
  when 'n'
    break
  when 'y'
    puts "Play on!"
  else
    puts "Please choose either Y or N"
  end
