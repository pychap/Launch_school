require 'pry'
# require 'seeing_is_believing'

number_of_pets = {
  'dogs' => 2,
  'cats' => 4,
  'fish' => 1
}
pets = number_of_pets.keys # => ['dogs', 'cats', 'fish']
counter = 0

<<<<<<< HEAD
def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end

array_of_words = words_from_string(sentence_of_words)
# binding.pry

def count_frequency(word_list)
  counts = Hash.new(0)
  # in for loop below "word" is a parameter, not a variable
  for word in word_list
    counts[word] += 1
    # binding.pry
  end
  counts
  # binding.pry
end

p count_frequency(array_of_words)

p create_hash


arr = [['name', 'Joe'], ['age', 10], ['favorite_color', 'blue']]
=======
loop do
  break if counter == number_of_pets.size
  current_pet = pets[counter]
  current_pet_number = number_of_pets[current_pet]
  puts "I have #{current_pet_number} #{current_pet}!"
  counter += 1
end
>>>>>>> d3ca6dae8e41b3a1608020ac46a41bb39e1076ea
