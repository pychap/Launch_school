require 'pry'

statement = "The Flintstones Rock"

f_hash = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  f_hash[letter] = letter_frequency if letter_frequency > 0
    # binding.pry
end

p f_hash