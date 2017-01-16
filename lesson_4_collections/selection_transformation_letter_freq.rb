require 'pry'

question = 'How many times does a particular character appear in this sentence?'

def select_letter(sentence, character)
  selected_chars = ''
  counter = 0

   loop do
     break if sentence.size == counter
     current_char = sentence[counter]

     if current_char == character
      selected_chars << current_char
   end

   counter += 1
 end
 selected_chars
end

answer = select_letter(question, 't').size  

puts answer