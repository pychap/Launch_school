# def mess_with_vars(one, two, three)
#   puts "In the method...\n\n"
#   one = two
#   puts "One #{one} #{one.object_id}"
#   two = three
#   puts "Two #{two} #{two.object_id}"
#   three = one
#   puts "Three #{three} #{three.object_id}...\n\n"
#   # puts "Inside the method: One #{one.object_id}, Two #{two.object_id}, Three #{three.object_id}"
# end
#
# one = "one"
# two = "two"
# three = "three"
#
# puts "Before the method call: \n\n one #{one.object_id},\n\n two #{two.object_id},\n\n three #{three.object_id}...\n\n"
# # puts "Before the method call: Three #{three.object_id}"
#
# mess_with_vars(one, two, three)
#
# # puts "After the method call: One #{one.object_id}, Two #{two.object_id}, Three #{three.object_id}"
#
# puts "one is: #{one} with object id of #{one.object_id}"
# puts "two is: #{two} with object id of #{two.object_id}"
# puts "three is: #{three} with object id of #{three.object_id}"


require 'SecureRandom'
#
# def uuid_print
#   p SecureRandom.uuid
# end
#
# uuid_print

# section_one_letters = ('a'..'z').to_a.shuffle[0, 8]
# section_two_letters = ('a'..'z').to_a.shuffle[0, 4]
# section_three_letters = ('a'..'z').to_a.shuffle[0, 4]
# section_four_letters = ('a'..'z').to_a.shuffle[0, 4]
# section_five_letters = ('a'..'z').to_a.shuffle[0, 12]
#
# uuid_array = []
# uuid_array = [section_one_letters.join(), section_two_letters.join(), section_three_letters.join(), section_four_letters.join(), section_five_letters.join()]
#
# p uuid_array.join("-")

require 'pry'


# def generate_UUID
#   characters = []
#   (0..9).each {|digit| characters << digit}
#   ('a'..'f').each {|digit| characters << digit}
  
#   uuid = ""
#   sections = [8, 4, 4, 4, 12]
#   characters.each_with_index do |section, index|
#     section.times do
#       uuid += characters.sample
#     end
#     uuid += '-' unless index >= sections.size - 1
#   binding.pry
#   end
# end

# p generate_UUID

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  true
end

