def integer?(input)
  input.to_i.to_s == input
end

def figure_it_in_mos(convert_to_mos)
  convert_to_mos.to_i * 12
end

answer_calc = ""

loop do
  puts "What's your age in years?"
  answer_calc = gets.chomp
  if integer?(answer_calc)
    break
  else
    puts "Please enter a valid non-zero number."
  end
 end
 mos = figure_it_in_mos(answer_calc)
 puts "You are #{mos} months old!"
