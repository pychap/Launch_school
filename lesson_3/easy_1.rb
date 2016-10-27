# 1. != is "not equals", it would be used for comparing
# 2. ! before something like !user_name would mean "not user_name"
# 3. ! after something like words.uniq! means permanent modification
# 4. ? before something - I don't know
# 5. ? after something means is the object something like odd?
# 6. !! before something - don't know

# advice = "Few things in life are as important as house training your pet dinosaur."
# puts advice.gsub!('important', 'urgent')

# 4
# numbers = [1, 2, 3, 4, 5]
# numbers.delete_at(1) will delete the integer as pos 1 which is in this array; 2
# numbers.delete(1) will delete the integer 1, regardless of where it is in array

# 5
# (10..100).each do |num|
#   if num == 42
#     puts "Yes #{num} is there!"
#     break
#   end
# end
# puts (10..100).cover?(42)

# 6
# famous_words = "seven years ago..."
# puts famous_words.insert(0, "Four score and ")
# puts famous_words.gsub!("seven years ago...", "Four score and seven years ago...")
# puts famous_words.prepend("Four score and ")

# 8
# flinstones = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
# p flinstones.flatten

# 9
# flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
#
# flintstones.each do |key, value|
#   if key == "Barney"
#     puts "#{key}'s number is #{value}'"
#   end
# end

# 10
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}
flintstones.each_with_index { |item, index|
  flintstones_hash[item] = index
}
p flintstones_hash
