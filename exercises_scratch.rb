
def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end
def numer_zero?(num)
  num.to_i == 0
end

puts "Please enter a numerator and a denominator and I will divide them for you."

numerator = nil
puts ">> Please enter the numerator"
numerator = Kernel.gets().chomp()

denominator = nil
puts ">> Please enter the denominator"
denominator = Kernel.gets().chomp()

loop do
  break if (valid_number?(numerator)) && (valid_number?(denominator))
  puts "Invalid input. Only integers are allowed."
  break
end

loop do
    if numer_zero?(denominator)
      break
    else
      puts "Invalid input. A denominator of 0 is not allowed."
      break
    end
end

result = numerator.to_i/denominator.to_i

puts "#{numerator} \/ #{denominator} is #{result}"
