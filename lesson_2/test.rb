<<<<<<< HEAD
require 'pry'


# statement = "The Flintstones Rock"

# flintstones_hash = {}

# first break apart string, statement.split()
# with string broken to each letter, go over and count how many of each
# if i == i, counter +=
# populate into key, value hash with map(?), select(?)
# once a hash is instantiated, then you just fill with each loop

# letters = statement.split('')
# letters = ('A'..'Z').to_a + ('a'..'z').to_a

# letters.each do |letter|
#   letter_frequency = statement.scan(letter).count
#   flintstones_hash[letter] = letter_frequency if letter_frequency > 0
# end

# p flintstones_hash

def uuid_generator
	characters = []
	(0..9).each {|digits| characters << digits.to_s}
	('a'..'f').each {|digits| characters << digits}

	uuid = ""
	sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times do
      uuid += characters.sample
    end
    uuid += '-' unless index >= sections.size - 1
  end
  uuid
end

puts uuid_generator
=======
a = [5, 9, 3, 11]
puts a.min(2)
>>>>>>> b865ca0fbf4127e625ef06bf0c70f8349a65624b
