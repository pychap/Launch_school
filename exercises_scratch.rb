require 'pry'

say_hello = true
	counter = 0

while say_hello

    puts 'Hello!'
    counter += 1
  say_hello = false if counter == 5
end
=======
require 'pry'                  # => true
require 'seeing_is_believing'  # => true

sentence_of_words = "Sparky the cat sat on the mat with the hat."

def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end

array_of_words = words_from_string(sentence_of_words)
# binding.pry

def count_frequency(word_list)
  counts = Hash.new(0)
  for word in word_list
    counts[word] += 1
    binding.pry
  end
  counts
  # binding.pry
end

p count_frequency(array_of_words)

p create_hash