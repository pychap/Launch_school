def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

# ask user for two integers
  # insist one be positive, one negative
# add the integers together
# display result

loop do
  integer_one = nil
  integer_two = nil

  loop do
    puts "Please enter a positive or negative integer:"
    integer_one = gets.chomp
    # puts "You entered #{integer_one}, 1st integer."
    if integer_one == '0'
      puts ">> Invalid input. A denominator of 0 is not allowed."
    else
      break if valid_number?(integer_one)
      puts ">> Invalid input. Only non-zero integers are allowed."
    end
  end

  loop do
    puts "Please enter a positive or negative integer:"
    integer_two = gets.chomp
    puts "You entered #{integer_two}, 2nd integer."

    if valid_number?(integer_two)
      break
    else
      puts ">> Invalid input. Only non-zero integers are allowed."
    end

    if (integer_one.to_i.positive? == integer_two.to_i.positive?) || integer_one.to_i.negative? == integer_two.to_i.negative?
       puts ">> Sorry. One integer must be positive, one must be negative."
       puts "Please start over."
     else
        break
     end
       break
   end
end

sum = nil
sum = integer_one.to_i + integer_two.to_i

puts "#{integer_one} + #{integer_two} = #{sum}"
puts "End of prog."
