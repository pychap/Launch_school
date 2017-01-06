require 'pry'

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

integer_one = ''
integer_two = ''
sum = nil

loop do
  loop do
  	puts "Enter a positive or negative integer."
  	integer_one = gets.chomp	
  	break if valid_number?(integer_one)
    puts "Invalid input. Only non-zero integers are allowed."
  end  

  loop do
  	puts "Enter the next positive or negative integer, opposite of the 1st."
  	integer_two = gets.chomp	
  	break if valid_number?(integer_two)
    puts "Invalid input. Only non-zero integers are allowed."
  end
  # binding.pry
  
  if (integer_one.to_i <=> integer_two.to_i) <= 0
  	puts "Please enter one positive and one negative number."
  else
  	break
  end
end  

sum = integer_one.to_i + integer_two.to_i
puts sum




