require 'pry'

words = "the flintstones rock"

# Write your own version of the rails titleize implementation.

def titleize(sentence)
  counter = 0
  entered_sentence_titled = ''
  break_apart = sentence.split
  counter = break_apart.size

  break_apart.each_with_index do |word, index|
    word[0] = word.chr.upcase
    entered_sentence_titled << word
    entered_sentence_titled << " " if index < counter - 1
    # binding.pry
  end
 puts entered_sentence_titled
end

titleize(words)
