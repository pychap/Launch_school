numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input
  if numbers.size == 5
    # return numbers (wrong!!!)
    break
  end
end
puts numbers
