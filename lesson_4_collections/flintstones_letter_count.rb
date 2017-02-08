require 'pry'

statement = "The Flintstones Rock"
statemnt_array = statement.split("")


flinstones_letter_count = {}

statemnt_array.each do |word|
	letters = word.chars
	letters.each do |character|
  	flinstones_letter_count[character] = statemnt_array.count(character)
  end
  flinstones_letter_count
end

p flinstones_letter_count
