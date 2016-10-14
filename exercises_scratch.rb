def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts '>> Please enter a positive or neg number.'
    number = gets.chomp
    return number.to_i if valid_number(number)
    puts '>> Invalid input. Only non-zero integers are allowed.'
  end
end

integer_one = nil
integer_two = nil

loop do
  first_number = read_number
  second_number = read_number
end
