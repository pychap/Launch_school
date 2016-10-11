loop do
  puts "Do you want me to print something?"
  user_type_in = gets.chomp
  if user_type_in.downcase == "y"
    puts "something"
  elsif user_type_in.downcase == "n"
    break
  else
    puts "Invalid input! Please enter y or n"
  end
end
