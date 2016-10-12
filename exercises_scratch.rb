loop do
  puts "How many output lines do you want? Enter a number >= 3:"
  answer = gets.chomp
  if answer.to_i < 3
    puts "That's not enough lines."
  else
    answer = answer.to_i
    answer.times do
      puts "Launch School is the best!"
    end
    break
  end
end
