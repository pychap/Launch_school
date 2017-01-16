require 'pry'

my_numbers = [1, 4, 3, 7, 2, 6]

def multiply(the_array, multiplier)
  multiplied_numbers = []
  counter = 0

  loop do
    break if counter == the_array.size

    current_number = the_array[counter]
    current_number *= multiplier 
    multiplied_numbers << current_number

    counter += 1
  end
  multiplied_numbers
end


answer = multiply(my_numbers, 3) 

p answer