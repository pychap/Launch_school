number_of_lines = nil

loop do
  loop do
    puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit):'
    number_of_lines = gets

    if number_of_lines >= '3'
      break
    else
      break if number_of_lines.downcase == 'y'
      puts ">> That's not enough lines."
    end
  end

  number_of_lines = number_of_lines.to_i

  while number_of_lines.to_i > 0
    puts 'Launch School is the best!'
    number_of_lines -= 1
  end
  puts "Made it here."

end
