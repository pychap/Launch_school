require 'pry'
# Modify this program so it repeats itself after each input/print iteration, asking for a new number each time through. The program should keep running until the user enters q or Q.

number_of_lines = nil

loop do
  loop do
    puts '>> How many output lines do you want? Enter a number >= 3:'
    puts ">> Enter Q to quit"
    number_of_lines = gets.to_i
    break if number_of_lines >= 3
    puts ">> That's not enough lines."
  end  

  while number_of_lines > 0
    puts 'Launch School is the best!'
    number_of_lines -= 1
  end

end