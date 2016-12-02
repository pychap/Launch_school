require 'pry'

statement = "The Flintstones Rock"

result = {}
letters = ('a'..'z').to_a + ('A'..'Z').to_a

statement_array = statement.split



letters.each do |letter|
  letter_amount = statement.scan(letter).count
  result[letter] = letter_amount unless letter_amount <= 0
end

p result