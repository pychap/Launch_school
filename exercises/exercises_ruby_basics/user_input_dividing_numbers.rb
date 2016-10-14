def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
loop do
  puts ">> Please enter the numerator:"
  numerator = Kernel.gets().chomp()
  numerator.to_i

  break if valid_number?(numerator)
  puts ">> Invalid input. Only integers are allowed."
end

denominator = nil
loop do
  puts ">> Please enter the denominator:"
  denominator = Kernel.gets().chomp()
  # denominator = denominator.to_i
  if denominator == '0'
    puts ">> Invalid input. A denominator of 0 is not allowed."
  else
    break if valid_number?(denominator)
    puts "Invalid input. Only integers are allowed."
  end
  puts "got this far"
end

# puts "#{numerator} / #{denominator}"

result = nil
result = numerator.to_i / denominator.to_i

puts "#{numerator} / #{denominator} = #{result}"
